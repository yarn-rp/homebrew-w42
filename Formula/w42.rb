class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.10/w42-darwin-arm64"
      sha256 "8fba6ea28a12c34912c589e96ab0cdacedc8e71bb6d2fcbc8cf3a82c1e4de4ac"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.10/w42-darwin-x64"
      sha256 "a72edb2a75b3c3d16bcc88604770427bc453a276bfe7a249241c419abd6169ec"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.10/w42-linux-x64"
    sha256 "9c2a74e3571cd5d23651d4af0efa4488e46e0ca32e8d4c0142cf19e8b739c8e1"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
