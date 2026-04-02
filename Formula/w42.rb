class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.29/w42-darwin-arm64"
      sha256 "92e5d500b94c4e8fcf06b3ba7e31013e325c1b8db193034788ce6d9db084f84e"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.29/w42-darwin-x64"
      sha256 "a7373e5c6ac2982612008a06db7a6bb7c37ba6ac4204aaf707d04b0171e9e9f6"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.29/w42-linux-x64"
    sha256 "6f9bc7a96b3060dc89086bf6a4ec57919dffeb46db86594b255d1e351a357eb1"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
