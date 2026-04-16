class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "2.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v2.1.2/cloud-claude-darwin-arm64.tar.gz"
      sha256 "682db556875e729f44f54d71d3dc7ef7f67c6d18b7c3cfbc8ef37ce0ba00fef8"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v2.1.2/cloud-claude-darwin-amd64.tar.gz"
      sha256 "8238192ce6b161e30b269bd794ea4c8ab11ba8b40d886db49085a344be631c99"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v2.1.2/cloud-claude-linux-arm64.tar.gz"
      sha256 "2b63c4db39963d8bf6a5706f50a023e57f9e6245dbc34dbdbfc497c6ffbac4b0"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v2.1.2/cloud-claude-linux-amd64.tar.gz"
      sha256 "40a57a0cedb4b09559815baee87b40a66c9b00793d5a0cb1c6f9d94e174279f6"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
