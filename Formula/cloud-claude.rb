class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.3/cloud-claude-darwin-arm64.tar.gz"
      sha256 "df8f7ac0b34f06684adbc77889d12ccff90baa08d824347f67e05172c91b141c"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.3/cloud-claude-darwin-amd64.tar.gz"
      sha256 "901930d616ad3404c82159ecf261489a9892d3b76f87dc47b50368d71506b6d8"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.3/cloud-claude-linux-arm64.tar.gz"
      sha256 "20453f8526c1d0093d78b6e187be660960683fb784fdcea9b27c13899df02858"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.3/cloud-claude-linux-amd64.tar.gz"
      sha256 "6b5ae26742b2764a73c1fbc8939a55033beb90865b3f9e0dc42bd48a50f8f565"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
