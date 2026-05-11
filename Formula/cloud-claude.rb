class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.4/cloud-claude-darwin-arm64.tar.gz"
      sha256 "39e7663ded3a0cea5e7ce2a49c07b4929fe9209d43b811577b6286298c0ad7fa"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.4/cloud-claude-darwin-amd64.tar.gz"
      sha256 "1b0563e57e2d7dcf7cc2d8be469863ff04f6af343e4d547619f9e2dd411219f7"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.4/cloud-claude-linux-arm64.tar.gz"
      sha256 "a28b788382dd87c8871d7a1e7cc0990550b2ff3c11f0c078d4c30c56cec4b774"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.4/cloud-claude-linux-amd64.tar.gz"
      sha256 "599ac20b7d8341063424af86165d8e207a048d157e3ca2c9f300170ff2811a27"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
