class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.5/cloud-claude-darwin-arm64.tar.gz"
      sha256 "0303f3fbf98c5c27c75a7d6357c86e1a194d74d07be9015e06d4fd87d6c6174e"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.5/cloud-claude-darwin-amd64.tar.gz"
      sha256 "79fb978849fd0ff4839e27d0180ea0a9a9cc0693885f2bc7cc90867a0e7063f0"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.5/cloud-claude-linux-arm64.tar.gz"
      sha256 "34b4bf41c2fe5896b7a24fe0e3c177920783e4de2d810ebea7508d5c6072948b"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.5/cloud-claude-linux-amd64.tar.gz"
      sha256 "2fed1f7547cb328abbda5f434fb3a0b96eef613d3835f43f950ae1b195ecfac6"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
