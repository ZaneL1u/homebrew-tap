class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.5/cloud-claude-darwin-arm64.tar.gz"
      sha256 "24e759eb6c1f1fe9404d1f9d70d0415163fcfb454c6e19bd201afdea1d0da6e7"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.5/cloud-claude-darwin-amd64.tar.gz"
      sha256 "091cc4adcc5eb423af854de40e65e3ba8175742bec1d3fa3e0818fc455f14697"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.5/cloud-claude-linux-arm64.tar.gz"
      sha256 "62ae3f254ccfd3242e4370d156e06f159ecc67676073cfd3fcc6d3a33aa0f913"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.5/cloud-claude-linux-amd64.tar.gz"
      sha256 "d9b38352fb905cbdb63e622e0f280e35eaffdfa0804eba289cc9228e6c23e128"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
