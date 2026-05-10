class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.1/cloud-claude-darwin-arm64.tar.gz"
      sha256 "e2abed60c063a4584eb686d7cdfcbbc8517be11a605e8d5e85d7d180970e4531"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.1/cloud-claude-darwin-amd64.tar.gz"
      sha256 "0dce156f5436e71e186ec56aab34be212a275c69b2a17b7d2cae9d0f57cdff45"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.1/cloud-claude-linux-arm64.tar.gz"
      sha256 "4db9d36de64e64b3f0e550a2e15da7e24bc9d0c5c2f740b6dc0cb5f373086c87"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.1/cloud-claude-linux-amd64.tar.gz"
      sha256 "8489ab3c0575824bb5184f4584431d2f81e2438680cf6a11c6b9e56b8860e325"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
