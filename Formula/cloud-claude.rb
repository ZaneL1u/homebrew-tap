class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-darwin-arm64.tar.gz"
      sha256 "e442da8a28fc2b9bd2c7251bda5dabc55f4b0b3f6d5cbc31e0d54c7fe6bf3047"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-darwin-amd64.tar.gz"
      sha256 "66a78c4dd19eb8c484858b8f03f82f5ebfde2144af93c2b0afecc0201e857e78"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-linux-arm64.tar.gz"
      sha256 "fa0df7faa2ce60f2949f31b902452f65c35adcfde8ca2ed93378d6181b249af5"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.2/cloud-claude-linux-amd64.tar.gz"
      sha256 "62a2e431c4a1c7783ffd7fb1b9e5d5006dedb8649e40555a72ba3113f5842808"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
