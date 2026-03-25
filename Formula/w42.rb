class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.12/w42-darwin-arm64"
      sha256 "190881961a4a5446462c3d70ae9cf37329baa3a53130e34f154326c7f0ab81d8"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.12/w42-darwin-x64"
      sha256 "0878338c21a6011ceacc8d545c32f224ad367beb396db65a96443c1ec7dc0e92"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.12/w42-linux-x64"
    sha256 "e492f9c710e3c2ca217e1da7d9a1a51f429ea496bdea9a1803e3828d28b7f319"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
