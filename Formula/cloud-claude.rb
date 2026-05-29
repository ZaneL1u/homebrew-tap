class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.1/cloud-claude-darwin-arm64.tar.gz"
      sha256 "237590f124825e6e3b9d36d967bb5fbe21334fc561d8f5c0f7f1f2a5898f668b"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.1/cloud-claude-darwin-amd64.tar.gz"
      sha256 "03c13b5f74a1a8a2f2488e5edd3efccbd8bf9dda4e2ddde0fe0df477de82a074"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.1/cloud-claude-linux-arm64.tar.gz"
      sha256 "0e27c54e31b140c4345b9f59e2b8b024f9d34084609a11f6a1c8b66af3fa9ea8"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.1/cloud-claude-linux-amd64.tar.gz"
      sha256 "43421b41c00693b1e9e259aa6606255f51c5d2a2cf3243e5853d9b9e9fd8b6a4"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
