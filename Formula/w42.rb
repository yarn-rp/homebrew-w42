class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.16/w42-darwin-arm64"
      sha256 "5aff8c998d9a68485a02395d46da315fefd2fcb0cb811125997689e35cd9b257"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.16/w42-darwin-x64"
      sha256 "ecce9adb4650a02e5eedd56496eb38e52268836a7b425e98d910ae23944ff152"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.16/w42-linux-x64"
    sha256 "e22424ae4ff8a462440ad5a68dd1f2b13c186b7f8e0c15086653be3123eb8fd5"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
