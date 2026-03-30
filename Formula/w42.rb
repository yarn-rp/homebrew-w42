class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.23/w42-darwin-arm64"
      sha256 "7e617b14497c32bde4356e1ec932461650d51b572fda55e496c0b1fcf081ef76"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.23/w42-darwin-x64"
      sha256 "2f8fc5f6ded2f473d1ab3a87d5be47048c61a9deb54dd730c52098db45aabe1c"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.23/w42-linux-x64"
    sha256 "fc86ebbd3631697e4cc6a42476bd9cff9a85028fe8ccbbb46140bdd84ee0c568"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
