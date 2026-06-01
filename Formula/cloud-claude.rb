class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.0/cloud-claude-darwin-arm64.tar.gz"
      sha256 "2bba7985aacb8e81eda3126feee9af896b6f52e544d8a4dd9b7ae41129ee6758"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.0/cloud-claude-darwin-amd64.tar.gz"
      sha256 "b3a31473929be8aea2eff43fe2b661eff210e319fe18758abedd6c9abcf1314f"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.0/cloud-claude-linux-arm64.tar.gz"
      sha256 "d3b4c5b904f3b7c9c88e33098a16f69769110c53d3ee74ca70c85c5eff3e0eae"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.0/cloud-claude-linux-amd64.tar.gz"
      sha256 "3adeb2fa43f0a293138256516dc73fb2c4c9758b958f332a158e1a2dc1f1fc90"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
