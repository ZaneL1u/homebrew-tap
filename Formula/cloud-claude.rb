class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.3/cloud-claude-darwin-arm64.tar.gz"
      sha256 "0bbb7f96e74da2180f3700f397a4608b69b9975baed30cce856f93c04a2a8de7"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.3/cloud-claude-darwin-amd64.tar.gz"
      sha256 "ea798e11c5438a56bd6429df91ed29f999184ff3fba81f7ef1a0259a7cd7defa"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.3/cloud-claude-linux-arm64.tar.gz"
      sha256 "9f632f3084e701eb71d7f81bd868b74d12030700890d5d1e025805bd7ddbf13d"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.3/cloud-claude-linux-amd64.tar.gz"
      sha256 "0705ab7ed522f0fe37dfa976d39b2ff55df2c98f4dec071247beeae9f78762d7"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
