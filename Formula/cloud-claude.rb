class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.12/cloud-claude-darwin-arm64.tar.gz"
      sha256 "135910f66d41cdbe32daf0ad5b33213a8f4cda57b43086f171808a6dc422db91"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.12/cloud-claude-darwin-amd64.tar.gz"
      sha256 "6842f7d6ea808916ef6bd9365da1f66d966e8e879333fc50367dbebbf06a7625"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.12/cloud-claude-linux-arm64.tar.gz"
      sha256 "41a006dd1c027624f372c8dd17b87c8f8c10d7294b7f9913c6cd53ededa2bef6"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.12/cloud-claude-linux-amd64.tar.gz"
      sha256 "3aad0a65d8d85c4f4fa790c4022d2c67c3bbb6ff37ab9ce79d3e68b16ef3f7d5"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
