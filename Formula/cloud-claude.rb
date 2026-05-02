class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.4/cloud-claude-darwin-arm64.tar.gz"
      sha256 "5c2b8cbd77649ed40d677e4b14728b261b0a91a647244dbf059f88ac70fdfb68"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.4/cloud-claude-darwin-amd64.tar.gz"
      sha256 "84f576c7c56ae9c9654d7145f40c093b353e416348ea666f1c557a17687a7478"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.4/cloud-claude-linux-arm64.tar.gz"
      sha256 "106781ec0c98cf146a4e3e93c53b73e633ca120ef40d676fb1193c29093f4ff6"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.4/cloud-claude-linux-amd64.tar.gz"
      sha256 "d0d0e6778f8b2f6f0554fe511d555edc1315dd734dd2e44465eb2fe4137b24a9"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
