class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.16/cloud-claude-darwin-arm64.tar.gz"
      sha256 "d21ec2c90f5d3ad2660d8bd3dd9e5e5e1ba2943132e972594fbe3df4f824410a"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.16/cloud-claude-darwin-amd64.tar.gz"
      sha256 "2ec7519833be17d456bd2cdeaafe0a84b4f4d816d801856f09550c1539edc09e"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.16/cloud-claude-linux-arm64.tar.gz"
      sha256 "555a2076a7bab9b4753d297480ab8383de35b1e09ef9d1cc764a80d58a830be2"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.16/cloud-claude-linux-amd64.tar.gz"
      sha256 "301aaf053acf2cc4a34d74041dd70bebd33b6f08cd86ea0ba4f95555fe2050dd"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
