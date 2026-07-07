class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.15/cloud-claude-darwin-arm64.tar.gz"
      sha256 "5f611d391f818b1ae2394375b466c25f623aae7f7c1319ab9fd651d2360005c3"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.15/cloud-claude-darwin-amd64.tar.gz"
      sha256 "38525d8189af064c21f204472d9141763f6c9663a8cdc5d7812789b84f87eda4"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.15/cloud-claude-linux-arm64.tar.gz"
      sha256 "7c8cf7ff99362efd86bc3bed2e6de71f7ae105d1ba002a6b04e320530ada4af7"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.15/cloud-claude-linux-amd64.tar.gz"
      sha256 "2f8c70f3d6d77a8c4d2f203a535b1371896f8549484c35d22badd60ff27d131a"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
