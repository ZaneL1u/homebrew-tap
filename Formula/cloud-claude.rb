class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.6/cloud-claude-darwin-arm64.tar.gz"
      sha256 "24e5d505c068df1f02eb0c554224d0f02d2ef672e6347277e7149be6e9d56f51"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.6/cloud-claude-darwin-amd64.tar.gz"
      sha256 "ac776969a85dcaf62fcd617a5ccec307e4d79bef75c151bdb169bb212db4149f"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.6/cloud-claude-linux-arm64.tar.gz"
      sha256 "a382fab76eeaf2a143fc3c6619225a0e6155473f3b296b26c6b35a0b8ea0c025"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.6/cloud-claude-linux-amd64.tar.gz"
      sha256 "fcf7d7e6c4d4a0f661645ff3a6f6ea655c2fe8f99f0c95f16550bc0276e0592c"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
