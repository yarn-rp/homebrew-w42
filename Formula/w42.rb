class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.27/w42-darwin-arm64"
      sha256 "9ed13492f033d4b6bee2360a60d9b3eb2b3482cf176c1ec9de2070ae9283549c"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.27/w42-darwin-x64"
      sha256 "cad78adbe038f0dc683c5ad9c2491bd138fd611d970c9cf46772fd2b91077a92"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.27/w42-linux-x64"
    sha256 "f2b87b67290f4ee4bce4de8f4a6067c2efb274be25a81201fc79933702f3b976"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
