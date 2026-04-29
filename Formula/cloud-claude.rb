class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.2/cloud-claude-darwin-arm64.tar.gz"
      sha256 "d5ddfb6e67908cab6f24ec79a1497f392f114543b9fcf62f5d7d515631e3b53a"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.2/cloud-claude-darwin-amd64.tar.gz"
      sha256 "6ae2a6c5f5f6319b5cf53f265f61679587462ac6f98a359834735eebc5ffd872"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.2/cloud-claude-linux-arm64.tar.gz"
      sha256 "7721a8c6b13fe217263a150415100b4f972ba82b87a49af8426933c35d79608e"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.2/cloud-claude-linux-amd64.tar.gz"
      sha256 "4977f6b9d076420ddc842c9c4e46abb9e20a307ed83dcb7ec28fe736af82cdfe"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
