class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "4.2.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.11/cloud-claude-darwin-arm64.tar.gz"
      sha256 "cd8f7419d477311d8360a7f5fc5e5b0aef587c887a222c72d2916a49df8c0243"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.11/cloud-claude-darwin-amd64.tar.gz"
      sha256 "21f8739296cdce7ee562dd438a8705af6096d9e64cc4bce4de3d13ac4657bbab"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.11/cloud-claude-linux-arm64.tar.gz"
      sha256 "0d127a04afff20203ceb15ba0bcc941d9125f42cc556381cd0d588f1bf3ffbeb"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v4.2.11/cloud-claude-linux-amd64.tar.gz"
      sha256 "06f3ebcdf2eeb73313cb0d270a100355872cf60d438212942507ac194b66ee9b"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
