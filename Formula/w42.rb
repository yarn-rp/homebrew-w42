class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.18/w42-darwin-arm64"
      sha256 "917aa270a305f3c8d42fb65b3828e27bfd9e3b680c7d4ee5d4959d3bb36657a1"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.18/w42-darwin-x64"
      sha256 "585983747cbc320d7e335213e7c79787089b1042542ce354908341498bc6ef99"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.18/w42-linux-x64"
    sha256 "d1b731f9fa4415c77ee3d2b5982bc9a915394566be9a8c13309cf0ec5b3734a1"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
