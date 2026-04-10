class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.30/w42-darwin-arm64"
      sha256 "b0ca7829b67789f23cb663f886a2e13fae70a15393b4116de5299f850451d5a3"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.30/w42-darwin-x64"
      sha256 "22236057d6cddff11940e714a215a3580c58f077a5d18809cc28bfe91c124956"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.30/w42-linux-x64"
    sha256 "2764803a8ec530a833065cda6725fc5be0f40c2d3d9d74f56fbe08655b60e60c"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
