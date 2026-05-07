class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.6/cloud-claude-darwin-arm64.tar.gz"
      sha256 "f701b83f508f64d3249667ca7f2a9c65d7c22b213c117b5bfcfed692c00a4810"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.6/cloud-claude-darwin-amd64.tar.gz"
      sha256 "31f13f147294a85891d9a2e2b68329a70f90432b3889b1032b1db5d373c91e9c"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.6/cloud-claude-linux-arm64.tar.gz"
      sha256 "65297a5b9aed218bc47c5e4d929e0295fbd2429b02dc06c33693068b1a92f56d"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.3.6/cloud-claude-linux-amd64.tar.gz"
      sha256 "c3359260f4dee24cf4504c47c0e580ecaaccc6897eb919d5477de9bcadeb3827"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
