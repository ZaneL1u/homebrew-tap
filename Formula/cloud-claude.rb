class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.10/cloud-claude-darwin-arm64.tar.gz"
      sha256 "cb71b3e2f98fc03a58c50ed94ed762abef60f639c9ac18f0a2b54c570abcb9a8"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.10/cloud-claude-darwin-amd64.tar.gz"
      sha256 "4ae2a4ad01baf3a6bab81b86605b568818d666e08713ed5c209ace017fe314cb"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.10/cloud-claude-linux-arm64.tar.gz"
      sha256 "9e7181cdde29038cbd755f3b8b4cbdf0ae9e736543c990d2574e3f2a6729a864"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.10/cloud-claude-linux-amd64.tar.gz"
      sha256 "ef24f3c5b233a322c53dd6ae974e994c1806b6cfe61a5228f38741b0f49d70c0"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
