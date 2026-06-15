class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.6/cloud-claude-darwin-arm64.tar.gz"
      sha256 "152a011704561e500298362e149c9487113ff39c3de94a9174edaf1ea721201c"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.6/cloud-claude-darwin-amd64.tar.gz"
      sha256 "e71b040be75cae63ffe6c816e87d2e9863e64a3f4f5b85a8e15e954813d2bbc6"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.6/cloud-claude-linux-arm64.tar.gz"
      sha256 "b0355266562f09f9a926e124551409094dd949b6c1abc4df5d636c982a6036e0"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.6/cloud-claude-linux-amd64.tar.gz"
      sha256 "d46012212ca6b23d8ef3788b13c1e6d920acc6f9943fa01341a80d275aa97620"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
