class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.8/w42-darwin-arm64"
      sha256 "7a6ec95eb198b58008ec10338413074ced53bb90b6482cd5c64708acbfe3ff71"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.8/w42-darwin-x64"
      sha256 "b47479ecfb4ffbd8ef94a03103a206dc34a487fe42dd55b623ec0ef1f172d621"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.8/w42-linux-x64"
    sha256 "a30e81ac586c4703e992969faa03757cf3c93c23340470a56bd026e621daabc0"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
