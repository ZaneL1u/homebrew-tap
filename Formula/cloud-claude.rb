class CloudClaude < Formula
  desc "Transparent remote Claude Code CLI — one command to connect your cloud host"
  homepage "https://github.com/ZaneL1u/cloud-cli-proxy"
  version "3.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.2/cloud-claude-darwin-arm64.tar.gz"
      sha256 "cf36a2904718db6283d9f0d45e1a6c8d6f5aba1937278f56181c4d8acfcd909a"

      def install
        bin.install "cloud-claude-darwin-arm64" => "cloud-claude"
      end
    else
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.2/cloud-claude-darwin-amd64.tar.gz"
      sha256 "0bc549317d904d270f6c891e353895c43711e81c88381f1eb41785e44a06cddf"

      def install
        bin.install "cloud-claude-darwin-amd64" => "cloud-claude"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.2/cloud-claude-linux-arm64.tar.gz"
      sha256 "08a164be2b8f8347e6f675cd653f9bdef3f4d0439c41cf187dd7072d52b84d6b"

      def install
        bin.install "cloud-claude-linux-arm64" => "cloud-claude"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ZaneL1u/cloud-cli-proxy/releases/download/v3.5.2/cloud-claude-linux-amd64.tar.gz"
      sha256 "d2643e3701aa530239cb6f5046abfe9a3e89a03d024a9cd3603c6d1c94152356"

      def install
        bin.install "cloud-claude-linux-amd64" => "cloud-claude"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloud-claude --version")
  end
end
