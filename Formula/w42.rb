class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.3/w42-darwin-arm64"
      sha256 "e3830b80ffa497016782176505e2c3f98c43050c335daa0450c411670d902886"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.3/w42-darwin-x64"
      sha256 "6eaca69078b1c19a3d442827f5dbf9b8afde2da6d96df1d10bab81b8ec3ba818"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.3/w42-linux-x64"
    sha256 "a6f7619aa1b924bbf4f169168bf779ede86d385f2bf58e1c444651cb3c821fbd"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
