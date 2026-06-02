class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.5/cloud-claude-darwin-arm64.tar.gz"
      sha256 "443c94df5b7e8269247b3af2c3a6bd090e9c0cc099bbfee527a35334b5d36c04"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.5/cloud-claude-darwin-amd64.tar.gz"
      sha256 "f7b18b4514ebf9857af3fb274ee85341fea600bccf3aa3b6482a7d14f5d3c506"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.5/cloud-claude-linux-arm64.tar.gz"
      sha256 "feadd6a7f04bc5a87ce71f4b8b40645b0d6ef5ca76c1df25de423960d97d1ff9"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.5/cloud-claude-linux-amd64.tar.gz"
      sha256 "9efefd8a972416632e75c85f2b619cb0432effa7073200e3e7749614359e6f72"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
