class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.2/cloud-claude-darwin-arm64.tar.gz"
      sha256 "a1fec22fb7017736b26468889bb0b3ca86caf0f6c71eaf23d7cbafebd1f50221"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.2/cloud-claude-darwin-amd64.tar.gz"
      sha256 "f5b51d4f575f2fc7f97bbb4ad7b44c417d1ab7f1cab00cc59c4f4ce5024eb631"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.2/cloud-claude-linux-arm64.tar.gz"
      sha256 "5b499a04982a1de0befc6c69508dc4a119f22fc57f5362e1b326ef579ac3761c"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.2/cloud-claude-linux-amd64.tar.gz"
      sha256 "1a6a9c1dd7ce0962c478f20d33df00191d3647dedd6b70b257af70f141df4c3b"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
