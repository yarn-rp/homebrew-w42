class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.25/w42-darwin-arm64"
      sha256 "0b6c8c4de5ce2848c5b9cc27881381aa98971106485dd0e1cd80e59057756660"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.25/w42-darwin-x64"
      sha256 "5a334edf2b89d11217ee3a4c00e39acea96eff7becad6fc1c9d95c03acd8cfdc"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.25/w42-linux-x64"
    sha256 "192a3e50fcadae6528e350b63febb1b9c97799bf209b3f69538661760a599e2a"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
