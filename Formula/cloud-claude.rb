class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-darwin-arm64.tar.gz"
      sha256 "465af12feb1d98f076403ecba82a89d2dd53ea690ffd20d54615cc392a128522"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-darwin-amd64.tar.gz"
      sha256 "97873d2393ddff11bda6a9844411e8603913165a1d9843fa1aa12d28f9c20a80"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-linux-arm64.tar.gz"
      sha256 "5cdd7c76257704d2b9d88e1df693639765f250505f54646a45727248226b8cb5"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-linux-amd64.tar.gz"
      sha256 "86aba0fadd97d866c290fb59dcd2cb06f56432c0cd447c888684c1fd013669a5"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
