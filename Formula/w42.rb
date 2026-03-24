class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.2/w42-darwin-arm64"
      sha256 "13558755ac4497c453d2e85b0786fc5d85a2c21d7a1240dea1ed3f763e697b6e"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.2/w42-darwin-x64"
      sha256 "4d62ed5ff4eb4f4dd956191e6e3e8d7b571b248c033316ce3f0d999e6c9bfd25"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.2/w42-linux-x64"
    sha256 "00930b4c1fd23bbf60694226cdc5f3784d20f7be946f7c580c20244cc33bebb5"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
