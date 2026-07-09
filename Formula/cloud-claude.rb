class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.18/cloud-claude-darwin-arm64.tar.gz"
      sha256 "ce574779dc47b0c05f1d9e32cddde3e778d0185a6a664f1d44ef2da3bdb43c5d"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.18/cloud-claude-darwin-amd64.tar.gz"
      sha256 "2250be5278f717ae0a778cf51208336e2c0bb216f9c184564292c39b7b183043"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.18/cloud-claude-linux-arm64.tar.gz"
      sha256 "73efa87c086c0b96e485ef4913aabb58606a1fdb2029dc9d82a3460de508d86a"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.18/cloud-claude-linux-amd64.tar.gz"
      sha256 "095f8eda9e5583762e4531931ce70b4fa0563fcafa2ad1e8ac6480e785367ade"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
