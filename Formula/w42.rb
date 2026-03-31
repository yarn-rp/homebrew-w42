class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.28/w42-darwin-arm64"
      sha256 "dcc36b26bc93dd6a00ac2de50842ca3c3e08c1a1e34e5fc19c22196646c5591c"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.28/w42-darwin-x64"
      sha256 "ece7176190d6f4a3a475997d80f315268336888d254fcb722100e956e63d5b94"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.28/w42-linux-x64"
    sha256 "4638bf2d16db1d115074f1ceb2572a6cfe053ae693bf1bc7a6e074c905b40fc3"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
