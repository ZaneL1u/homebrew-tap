class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.4/cloud-claude-darwin-arm64.tar.gz"
      sha256 "e0381d3c8ec65f1106f4a794988434ee6de39b800e7c0bcd269800cbbf1388d4"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.4/cloud-claude-darwin-amd64.tar.gz"
      sha256 "1383b994fbed28c6b80ea4866c165acbccd65b8545ef507588411914b342bee4"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.4/cloud-claude-linux-arm64.tar.gz"
      sha256 "019f173d071d4fe8b2f500dcedbc69d89d55524e62d43d5659a5cfa0c73e3dd3"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.4/cloud-claude-linux-amd64.tar.gz"
      sha256 "d1ec1d0c30769d01c9ee1c314671d398a5accbefae488d8f55c5699c2bee4714"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
