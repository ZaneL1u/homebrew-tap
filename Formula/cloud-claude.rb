class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.2/cloud-claude-darwin-arm64.tar.gz"
      sha256 "49245fb13af91b53cd3f8035f7c5d87bdb9fe634a9adde943501434803e67ceb"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.2/cloud-claude-darwin-amd64.tar.gz"
      sha256 "0ec741f9c010e3dead0f7dd3d4057e0a1d9096270d77e686a3535c3cc25da38d"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.2/cloud-claude-linux-arm64.tar.gz"
      sha256 "9d3093e471bb51b600679c03ea3c0938691d0e2abc65df776b636bd0f687243d"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.2/cloud-claude-linux-amd64.tar.gz"
      sha256 "c1487f2f505335483986168d1bb9ace38ca9cefd680f0d4f7fdd7b57356a8153"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
