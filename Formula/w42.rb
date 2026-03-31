class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.26/w42-darwin-arm64"
      sha256 "fed556831c410d512040a5f2ef2b581c7759d4c475d4ed03f2058a925dcaeb2a"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.26/w42-darwin-x64"
      sha256 "cbc9304e8411aed0ef3657a2faf0b757d782ab9d23c135c9f3abdca5a4ca3734"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.26/w42-linux-x64"
    sha256 "82267c4eed11e1aa45bf4b01d08b359dc27fb61e9fe801674640a3d6089bf9eb"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
