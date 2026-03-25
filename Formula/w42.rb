class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.13/w42-darwin-arm64"
      sha256 "a1e81f48547cabb1619014920c6b26e7ce5e72fa472ba5040b18c29f0e20aaf0"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.13/w42-darwin-x64"
      sha256 "8a92056a9f49caf9a75774a506a78d6f4a70d40d6497ceae8c3ba43986e85ce6"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.13/w42-linux-x64"
    sha256 "620dfc5cb7b97221ef387eba4d7f7b417fa06679579e023f131e439ec3c8d8ce"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
