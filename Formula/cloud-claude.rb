class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.7/cloud-claude-darwin-arm64.tar.gz"
      sha256 "383e02e64cde1cb70c4096d20aa4a64bdc891cd8d8ba67d786b072a3de960347"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.7/cloud-claude-darwin-amd64.tar.gz"
      sha256 "27da5bbb3cfb43f370b1dd05184fc08117fb0d3a8f0bcb327719d175d9d63f65"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.7/cloud-claude-linux-arm64.tar.gz"
      sha256 "fa7605c824485c11b4914ae49e66bf05d4fd4f6cddfc264a07d263d4b52816e9"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.7/cloud-claude-linux-amd64.tar.gz"
      sha256 "972875f987272ebc1d2667b7f9d2383c6d094d74b1563075b02221f82415883e"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
