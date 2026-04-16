class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v2.1.1/cloud-claude-darwin-arm64.tar.gz"
      sha256 "c297b2313f31d091bb734a8031f6aa45e96bbb97436b5c59aca3e45d7bcb10e5"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v2.1.1/cloud-claude-darwin-amd64.tar.gz"
      sha256 "0b14392f6ff324a55bd3ee8df5c8946d75f608c7cd1322fb96ce1c02526cdd2c"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v2.1.1/cloud-claude-linux-arm64.tar.gz"
      sha256 "9ffe0acba4b793d191578172cac5b541e8e652424804fa3d1184cd2aeffc1c87"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v2.1.1/cloud-claude-linux-amd64.tar.gz"
      sha256 "4e0414c710b768a76e35dda442f6aca41f0e0387d02d019f0f5fb68ecef6421e"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
