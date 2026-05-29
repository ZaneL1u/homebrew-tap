class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.3/cloud-claude-darwin-arm64.tar.gz"
      sha256 "cd159b07c5a2699353b463932294e31a55a976a56957cfcbe8ea6aeb0efdeb45"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.3/cloud-claude-darwin-amd64.tar.gz"
      sha256 "09053920e1a91d6088981f05146b83209c2ca95c55b25341a766a9311a51bdaa"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.3/cloud-claude-linux-arm64.tar.gz"
      sha256 "3bf5675dd3c14e4b5b7186e8f4324b076a10e68b9b41177df584a3377f30d1a7"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.3/cloud-claude-linux-amd64.tar.gz"
      sha256 "68ddc48d4614f0a832aeba335d516480e5a1b42be7e8aa073b24b83cbacf22af"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
