class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.20/w42-darwin-arm64"
      sha256 "bd6c13ec8d471f4418343bd288d3125ca63e7fd9700996f4a6e52ab1538143e7"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.20/w42-darwin-x64"
      sha256 "1dddac326d1fb77b1d36dae072c14ab763acb8600d869f1eda37a543972a220f"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.20/w42-linux-x64"
    sha256 "992f1ef957eb1747b5dbc5b1b2a458c99b23cf73f6a4e87e72a4031ca90596aa"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
