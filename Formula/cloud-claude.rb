class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.5/cloud-claude-darwin-arm64.tar.gz"
      sha256 "7eaa0efb400e9205162d3d288b3a34c4cff34d73f7aea4dc7fc43a7e701d0a14"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.5/cloud-claude-darwin-amd64.tar.gz"
      sha256 "469fc124c846cad888128ab8ae02fb2c3c5ca0170f27fe5325ca5e6b843c4f28"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.5/cloud-claude-linux-arm64.tar.gz"
      sha256 "f5c189175ff5bd1616103a6bcaa7a8de6c2fad6678532fb21aae1a7a4a745dd1"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.5/cloud-claude-linux-amd64.tar.gz"
      sha256 "7d3efa925e75119ccbcad996e95b0b602b1a04f98b7b5a58aa6be40302d309a4"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
