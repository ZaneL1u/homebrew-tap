class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.2/cloud-claude-darwin-arm64.tar.gz"
      sha256 "79ff08d801603c07a45a29b1278d8341aa6cb4fed1e5d5681338b63b051d1bfc"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.2/cloud-claude-darwin-amd64.tar.gz"
      sha256 "f53477d2b9f45f381d7cf5d170087a766ab9f3164b91c2ae890c57e3fb1c9967"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.2/cloud-claude-linux-arm64.tar.gz"
      sha256 "4ed660784543cdb59293a851db06e88b7fb6f16d4bdde37b7ed0d831e5ca33e6"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.2/cloud-claude-linux-amd64.tar.gz"
      sha256 "640353bf5f3caf1c1bd57ba9a4cb6b2379c2112cbf045638bb0d0a547002ee60"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
