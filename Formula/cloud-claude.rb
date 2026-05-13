class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.4/cloud-claude-darwin-arm64.tar.gz"
      sha256 "ca839620f734aef9697b9f7f618d859d8a96239223731b030f893d39bb41f16b"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.4/cloud-claude-darwin-amd64.tar.gz"
      sha256 "92633e6eafe08870c5115211a1dfc0475a4626d3817dc97964ae6dfbc4b953f3"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.4/cloud-claude-linux-arm64.tar.gz"
      sha256 "8cafe467e60fd90d2bba57ae46b487b23730b26ebc034fdc0bf656b328b23f2f"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.4/cloud-claude-linux-amd64.tar.gz"
      sha256 "f2f864d239f0e961b419abd29eb3fa8df6ca0bc6d0042a98ea9a4ab903974ae3"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
