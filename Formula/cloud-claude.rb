class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.3/cloud-claude-darwin-arm64.tar.gz"
      sha256 "35bcf3b70e13de2bde028f00291e7cc36b9b798eef88ee1795a3375054bb5d0a"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.3/cloud-claude-darwin-amd64.tar.gz"
      sha256 "aab9c1f4857566f847e1b13edc184e82c9e083984bc2e1004c7f6b236611dae8"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.3/cloud-claude-linux-arm64.tar.gz"
      sha256 "315edb05e0cdc2dbb1d53979f7fb8b024eccc76750e5112e0947716c2632d34b"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.3/cloud-claude-linux-amd64.tar.gz"
      sha256 "d40df068796bc89e19702fa8b6b07f95a651a61953db5613b9d8f6afcbe29332"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
