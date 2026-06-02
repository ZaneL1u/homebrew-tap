class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.4/cloud-claude-darwin-arm64.tar.gz"
      sha256 "f20a6afcabb775bbad6cac420d5bb96ae7f6c8ffd4f0c899feb8e5c2430ca9f2"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.4/cloud-claude-darwin-amd64.tar.gz"
      sha256 "be3d82d26d6924c88e2d732f970a75e19f5f4c6883e1b0a9ade6a7006455fa81"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.4/cloud-claude-linux-arm64.tar.gz"
      sha256 "efd9b0c85a846e7ead312f013e4118c555a0cc0e267b5a2da06300d2173902c1"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.4/cloud-claude-linux-amd64.tar.gz"
      sha256 "53def1f0ffbbf731bf6cced3f92bbfaae185cc0df731b932b523d29d45d0d8a9"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
