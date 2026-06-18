class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.8/cloud-claude-darwin-arm64.tar.gz"
      sha256 "c433f838dfc28ad076d3ae160f91b836740424269e51eccb60f608ba1529d0ec"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.8/cloud-claude-darwin-amd64.tar.gz"
      sha256 "456c3943145ddbe6d6fcbee8a8214528345e3e340c1e510a85a872a2854dc65e"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.8/cloud-claude-linux-arm64.tar.gz"
      sha256 "e12b7502f991260b3e249524da9ab0e1141d5fc9d25e8f3531b2944f80617dd2"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.8/cloud-claude-linux-amd64.tar.gz"
      sha256 "d2902319b5d6bf3fb6472104d2fc6551eae9c43b758ffac4cb6d975da8c4f826"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
