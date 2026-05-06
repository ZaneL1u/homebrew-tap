class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.4/cloud-claude-darwin-arm64.tar.gz"
      sha256 "a38d203d67fd37d7f178cbbcd51fbc2a323486cae6959b8d89a3d12eed340852"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.4/cloud-claude-darwin-amd64.tar.gz"
      sha256 "e7ab377cf1428159e8f09811880df5446e160863d41d2a4bcce2b16f9027fc53"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.4/cloud-claude-linux-arm64.tar.gz"
      sha256 "0e2ae980e71b13e5d1da4661e5b78decd7e4d308f16ffaccb8d727bded5aa7db"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.4/cloud-claude-linux-amd64.tar.gz"
      sha256 "5055df6e97f55924dc5541276c5e5c09b85e3416e73fb295ee4237c4475c0ad5"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
