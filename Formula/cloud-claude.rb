class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.13/cloud-claude-darwin-arm64.tar.gz"
      sha256 "8d78c2c6da4de695fb0165c138b6530d81c592b28adb284d88778aa0f71c06f2"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.13/cloud-claude-darwin-amd64.tar.gz"
      sha256 "c6fd6dc718cb8fa812fde4f5bd7a4ca54b8f6f16473a458b17b2ca76d25f5288"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.13/cloud-claude-linux-arm64.tar.gz"
      sha256 "9028b1f6a9e540f09cf60d4b11ace290c380af37516a35bf0878de5ddce51950"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.13/cloud-claude-linux-amd64.tar.gz"
      sha256 "db02473bca4e5ce6a43df40d0b5535a04f0c884832d34076b1bcee3ea51e4a0f"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
