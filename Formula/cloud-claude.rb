class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.2/cloud-claude-darwin-arm64.tar.gz"
      sha256 "d9c10e0b549fabfef4045e02a5807150ec1236903df543a7373b8a3bd590bf2d"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.2/cloud-claude-darwin-amd64.tar.gz"
      sha256 "640138223e243993d1918676d2aed584092978dd39d23d79cd491ab96744b166"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.2/cloud-claude-linux-arm64.tar.gz"
      sha256 "034c27619ff2e0dec6dec1bd8c212423dc00cb3d7fe7de33e8fac72818e52000"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.0.2/cloud-claude-linux-amd64.tar.gz"
      sha256 "4fcadfe7ada0d0573a7399bc7b70ab1d6abea405d6418af0f13b09ecca3f49fb"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
