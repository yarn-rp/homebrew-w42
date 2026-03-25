class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.9/w42-darwin-arm64"
      sha256 "5a8d4c8333d55a1401741777e4c5b63bd6569cd92296d34d6c3e7e961b0741f3"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.9/w42-darwin-x64"
      sha256 "31930fb147f5cebf50c0fe8d175571df16931cf47541077d52f9eb3e13730a23"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.9/w42-linux-x64"
    sha256 "bbbe1abd72e369703ea193feb96f1c897e5b9dff46cbab9cc4e6828061797148"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
