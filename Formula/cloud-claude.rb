class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.0/cloud-claude-darwin-arm64.tar.gz"
      sha256 "35becf9e72b409cb792d2c05cd40f8b8b303d0a370f1c7bbcf75414a2d57f79e"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.0/cloud-claude-darwin-amd64.tar.gz"
      sha256 "8c5b00a2da107ecb39983287ae1d2c5ac5f86772ead1d45ab74149280662d2cd"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.0/cloud-claude-linux-arm64.tar.gz"
      sha256 "bf4c8013957e2dddfbebb2c18d6d86f15e3346e961df6b7587b0a0b5a4630896"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.4.0/cloud-claude-linux-amd64.tar.gz"
      sha256 "a658d62c45a86e701cafbdd1f7fc3b873fb56a7fc745d7fb6c95d3dfbc21b42e"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
