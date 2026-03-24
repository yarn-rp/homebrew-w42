class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.4/w42-darwin-arm64"
      sha256 "bdb728346a22877f3f6d05da18e1f6a240e4fd96d658c851772dad6848d6ae33"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.4/w42-darwin-x64"
      sha256 "018795f37bfb6ba018bc0f0c7178607624cf3f708322f7c8cc604f61afb0b4be"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.4/w42-linux-x64"
    sha256 "4ca3183d042512a6ac0da07dc9f6718b86b00337210949cac4251ae06e58fb8e"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
