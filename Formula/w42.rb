class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.14/w42-darwin-arm64"
      sha256 "7b66f8f54c7d7de03c77822bb6ff5471dfbb60893da7f2e75e7c97c649b6cb4f"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.14/w42-darwin-x64"
      sha256 "6c228fdf91677225e2c4ef5eb58f7c0e56fd75c67934c2fb477bc32e0b8f3d1e"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.14/w42-linux-x64"
    sha256 "edda56a69d9c8ffaf83a1c1cd32ad35ef2f10991073772b8752b21d8e46bbff4"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
