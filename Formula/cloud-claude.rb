class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.17/cloud-claude-darwin-arm64.tar.gz"
      sha256 "87cb78235250b106a58842c2728c8f217957f4ca2604b3db9cf019b337a16ec3"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.17/cloud-claude-darwin-amd64.tar.gz"
      sha256 "3f8e7f8b30b43c205083a896c253750d3c0731f95c982f190aee8a945aeb6bea"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.17/cloud-claude-linux-arm64.tar.gz"
      sha256 "fb45a3f1d92c01ca29cffe7c531ed8275674079c2c92cc5dea6418e0fb727fe4"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.17/cloud-claude-linux-amd64.tar.gz"
      sha256 "9ad7d455ceaf8b7813bfbc70a6ef83b0e47dd92bd2006d917461d61b56d24baf"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
