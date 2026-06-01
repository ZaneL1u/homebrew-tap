class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-darwin-arm64.tar.gz"
      sha256 "ab29fca829da822c56b60a192a219c5231af5087caa189c7bb2bdcb150e07495"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-darwin-amd64.tar.gz"
      sha256 "82aa4777ca0bcd10207f6df573f4cc9bd27baf5de72f7961f4fb575bc98b52ad"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-linux-arm64.tar.gz"
      sha256 "7c05ee390e1921b03f6dc301acbd3bbbd4431d54a7e60b70cc205db0a0ed506d"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-linux-amd64.tar.gz"
      sha256 "e54382a04b7f6d559428d34bd1ed88b1def1b6bce84dbf55e491a4f50cd5a789"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
