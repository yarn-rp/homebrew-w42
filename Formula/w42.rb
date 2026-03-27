class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.19/w42-darwin-arm64"
      sha256 "88a2c0bd132df98f5e0aa897d5bf04f729e6b54ad427c9e03d0eb2244397a8b9"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.19/w42-darwin-x64"
      sha256 "f5f19ba6f1fffa74199cbdca07774b4f47be9f3079b48ec53a5fd484e4df93cd"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.19/w42-linux-x64"
    sha256 "e90ed2444dcee1802e060e17cdaa3242fcf237e2349f5f3cecfdd040e9d995e0"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
