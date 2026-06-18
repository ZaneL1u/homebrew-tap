class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.9/cloud-claude-darwin-arm64.tar.gz"
      sha256 "b6c992e69ac532fbf290e9d385ff9dec00a067891b48e8729055406fac7af290"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.9/cloud-claude-darwin-amd64.tar.gz"
      sha256 "4f02e72b7e1432f1430ff8247f6dc4148cf4b27f04feab70bcf97eadc98bacd2"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.9/cloud-claude-linux-arm64.tar.gz"
      sha256 "6e8d66c641072f1249c19f093ad129e35d74d0ca6715f426b0ff46b912e872a2"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.9/cloud-claude-linux-amd64.tar.gz"
      sha256 "27b217932b9b62b3020daa525732efac2fc4837c5fdf54a040a02375d7f312af"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
