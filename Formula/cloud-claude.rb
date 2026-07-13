class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.19/cloud-claude-darwin-arm64.tar.gz"
      sha256 "e09fa63d98953f1f79e4da058957856e195fe1cfa4bb612d8ad09262e00b62b4"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.19/cloud-claude-darwin-amd64.tar.gz"
      sha256 "efab4069d17db20e28fbacd445b3261454c2f5d9e44c72e4d23be70fb535d353"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.19/cloud-claude-linux-arm64.tar.gz"
      sha256 "ea12fd0cee96ebc7178aeb5919c4c05983aa99f1afd407a260e628e62bd44248"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.19/cloud-claude-linux-amd64.tar.gz"
      sha256 "d96c4289c920bf90422c9dfdf4925dcdc3cb7c4eefddb4e1755444106bdf0d28"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
