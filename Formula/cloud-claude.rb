class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.1/cloud-claude-darwin-arm64.tar.gz"
      sha256 "cb8761fb5d8cf47dab7ef0c1a1114e83b38812aa3c05af0288c0b11d8545e1d0"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.1/cloud-claude-darwin-amd64.tar.gz"
      sha256 "51465a6b8fa5885d2f98a0b85fd8cca1bdfefa2807ffd29e564071226cf155af"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.1/cloud-claude-linux-arm64.tar.gz"
      sha256 "33cfb910d5b02db97bf523a7885a5c3ca43c851ad19b74587de89f610ec9868c"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.1/cloud-claude-linux-amd64.tar.gz"
      sha256 "eb8c028abe1841a37df0e910bbd4ad3f20101252464aa656f2a9c516bd9d6e91"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
