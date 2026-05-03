class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.0/cloud-claude-darwin-arm64.tar.gz"
      sha256 "cd8386862cecea11c18af7d73efe02d2305fd6f9ad224aa0975b95a142c3c033"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.0/cloud-claude-darwin-amd64.tar.gz"
      sha256 "311ab1598515f0a90c8d6d87d5875d2ac031ebc1911fef20dab72e2be152e150"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.0/cloud-claude-linux-arm64.tar.gz"
      sha256 "8c285fa108f41d39146eea11d93cbf0b5cd1f43fcac20a684e2afc9813633706"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.0/cloud-claude-linux-amd64.tar.gz"
      sha256 "cf057322fb6b84c71ea9108cafcc0a44184247f95aa180508bd886174607bbef"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
