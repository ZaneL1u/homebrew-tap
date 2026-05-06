class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.3/cloud-claude-darwin-arm64.tar.gz"
      sha256 "40552ab1ba3344e72d16ec11633bbe6795ecee33f6ba18f1f4d92f274efea729"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.3/cloud-claude-darwin-amd64.tar.gz"
      sha256 "7b0f5a89c63b34a997d9c629d919ccd3c111d2243c9dee9d50c00b4ab09b67a3"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.3/cloud-claude-linux-arm64.tar.gz"
      sha256 "cb50d1783c545016f6d8c8af3f2dbb62e421ffd204e9e4381e27b37fbc27d234"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.3/cloud-claude-linux-amd64.tar.gz"
      sha256 "e05241cad05e2cb8aa4ead3ace52acd0079ed4c966789ffd927eb16d631c523a"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
