class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.22/w42-darwin-arm64"
      sha256 "b8213b2dd5ac47a3c7201268a3e7b748134012fea9345a91ef08b3841b822e02"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.22/w42-darwin-x64"
      sha256 "502d70f1b410dad330e50749b2ec79a9a21cb07ab1e231faf38de7eb9ce50d2e"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.22/w42-linux-x64"
    sha256 "8795db47c4ec173aa506053732ed7886e14e068b8766cf36c820c729b5627bac"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
