class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.3/cloud-claude-darwin-arm64.tar.gz"
      sha256 "3c21335b53ebef9940abf455430d66e25f0ad602c4c19e83dcb9121d33bfa566"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.3/cloud-claude-darwin-amd64.tar.gz"
      sha256 "abd29781e56a538cae79610975629623f6db786362cd2265e6fc75abd977b5ee"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.3/cloud-claude-linux-arm64.tar.gz"
      sha256 "85ff68176285925ad9ce634657cd12aae6f147a3ad908fa344762591cd33e5b7"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.2.3/cloud-claude-linux-amd64.tar.gz"
      sha256 "7e99cf839bc9bb11a5c2eb908ac991a68f5b890eefa3d9067bfc7b370333c01e"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
