class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.1/cloud-claude-darwin-arm64.tar.gz"
      sha256 "e0ea11f7210857c99cc982ab72c149ec72f7437edb7e2a146ed57640ccdf54fa"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.1/cloud-claude-darwin-amd64.tar.gz"
      sha256 "766ff53333b0e4c63b93ecf212a6f7b61ad61fae2f37f0915401918573596b4e"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.1/cloud-claude-linux-arm64.tar.gz"
      sha256 "76014b08af014d38c4fe65928ec1a5e3a6794ba6987a23ff39a24e6ebd810684"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.1/cloud-claude-linux-amd64.tar.gz"
      sha256 "d8950adfe55c73823a79d78f6fd250783c09affb14b09f06fb9abc2af8452305"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
