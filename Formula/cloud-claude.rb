class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.0/cloud-claude-darwin-arm64.tar.gz"
      sha256 "9d7485130aaff80480943bfbd0bb1cfea91596a6de8f0b6f2dc3d81402036a5c"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.0/cloud-claude-darwin-amd64.tar.gz"
      sha256 "c8c99aa9804332216a2dfabc336569d9b9a35d2b3b8f97a21f46ee2d340cfd62"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.0/cloud-claude-linux-arm64.tar.gz"
      sha256 "80f8e0bee354eb1678ecb88ffea039dbe7cc13aeaa112bcae68afb5bfe54e658"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.1.0/cloud-claude-linux-amd64.tar.gz"
      sha256 "3ef1fe772bac51e3116cbba590dbca5780a097f882ebd8ba4ac0089fa5d84bba"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
