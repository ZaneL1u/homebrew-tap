class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.7/cloud-claude-darwin-arm64.tar.gz"
      sha256 "b81681d2779d5192a743b0ddf606c03675e4ddcef4e710a81e5ffbe480c6cb88"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.7/cloud-claude-darwin-amd64.tar.gz"
      sha256 "a86f90947f5a74d88857f45c97280474f2001949e0006277c3ed8ed66639319d"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.7/cloud-claude-linux-arm64.tar.gz"
      sha256 "eaa897518c01c54ba5724df43fd0d3c9c9497cdd289277b0c07da7d116b60220"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.7/cloud-claude-linux-amd64.tar.gz"
      sha256 "7ed5ed3aca09779b668357b3b7353781cac532839874bbeb8b3f6ac4d013600f"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
