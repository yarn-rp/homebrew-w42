class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.15/w42-darwin-arm64"
      sha256 "eb909a091186a1140038bd222c80e0b8dc66a9ce3fdbc4d66d250f609c41948a"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.15/w42-darwin-x64"
      sha256 "635a83b80e05ee69010f1aaddecec1a0b6bd0c13c70eac17a224951e3831fabe"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.15/w42-linux-x64"
    sha256 "25068547971685de8427229ab40e5be306f9edf53d8328be198a1826b6a0aedb"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
