class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.21/w42-darwin-arm64"
      sha256 "7b1ad711b6bb3fbe43ad5af14d0cfde0887cb702683ca4a82194a5e01f35cfb0"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.21/w42-darwin-x64"
      sha256 "8b0f530d2f71d4db94453b0c2cb0bed48d26956f3cc54e3a5968e042232d0f5b"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.21/w42-linux-x64"
    sha256 "8c0d7bdeae06b6ce946c5bfa5b5edf000385d1004eb223dae1e352876bb8245f"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
