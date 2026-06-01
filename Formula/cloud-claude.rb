class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.3/cloud-claude-darwin-arm64.tar.gz"
      sha256 "c01770e45c8dcb9132cf3a11abb3a3172a0a881bafed192307a00af523bb644a"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.3/cloud-claude-darwin-amd64.tar.gz"
      sha256 "7bece3d68d40b423a9ab43938febcdf8be477c2b9e04bddd7c22955a057a8493"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.3/cloud-claude-linux-arm64.tar.gz"
      sha256 "56315f9c96970d2e58f547f30e0e9e4e8309664d1d8ad23b18f044c54c6688a0"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.3/cloud-claude-linux-amd64.tar.gz"
      sha256 "0d65fcb419e2b7686bb45e38006a21a6fdefe23c49948fdb03625ddc06d471a8"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
