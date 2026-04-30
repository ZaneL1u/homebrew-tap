class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.1/cloud-claude-darwin-arm64.tar.gz"
      sha256 "da8a40eca8b413b199e484e128d695068c2bfa0f07c5c845e2d6c492b73406f6"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.1/cloud-claude-darwin-amd64.tar.gz"
      sha256 "ae985ce5a6e0c9eef13210f16e82e2b5dfbe9afedb5f04cfb2cd66567892ac92"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.1/cloud-claude-linux-arm64.tar.gz"
      sha256 "fd61f46615ccc4e369370650fa351ac4cc162c23d23921cb90a4a4ff51d068ff"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.1/cloud-claude-linux-amd64.tar.gz"
      sha256 "885b4b7ba075b3cfbc73ee9ca900b610d93faa82aec44121aa6d5d7bc9f760a8"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
