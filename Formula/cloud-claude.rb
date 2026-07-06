class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.14/cloud-claude-darwin-arm64.tar.gz"
      sha256 "53d5688e775663428bc8444ebeee1ae0c538a08aa7545df2b96d260a45e16b63"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.14/cloud-claude-darwin-amd64.tar.gz"
      sha256 "c0e17fff850c9e6198f097444074cd7444495255069cd08c4e61c212c0b19ae9"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.14/cloud-claude-linux-arm64.tar.gz"
      sha256 "70db210f9626735a8b893fe0ad944a77602fbc0e5395bbbc2fc98a2763e487a4"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.14/cloud-claude-linux-amd64.tar.gz"
      sha256 "5ec4db596c5530aeb0dedfe7728fd8f3d629f6d0f4e0ca644e3fd401181c12d5"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
