class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.3/cloud-claude-darwin-arm64.tar.gz"
      sha256 "bdd4c716b10e7d9668981f9f59897166d1e35a2e715cb922f2ba26d9f975c8da"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.3/cloud-claude-darwin-amd64.tar.gz"
      sha256 "9f389600fc2551e70460cbf077da3fc11dad906974229f31880c14ca1b951c53"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.3/cloud-claude-linux-arm64.tar.gz"
      sha256 "472aa802c076c360380638076f57b25b647981352b2fa93f54fc283a26080b09"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.3/cloud-claude-linux-amd64.tar.gz"
      sha256 "9da71c63089561842dc9995ed2915ee730d1b530c644ed6f0b6bd0d3117b6743"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
