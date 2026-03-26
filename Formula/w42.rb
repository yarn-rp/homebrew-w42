class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.17/w42-darwin-arm64"
      sha256 "727e03c289f54e59ecce7d1727189db3be42ef7f0770da7b9700907c7cc84276"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.17/w42-darwin-x64"
      sha256 "afff48435f396d14d1037bb328efb1b1a64f220db9ce59d81eb8f22565c5ba78"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.17/w42-linux-x64"
    sha256 "f6f5269f4803e3fe354e7bf402e5ceb8242c712e8a89a3028603a8bccbf47adc"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
