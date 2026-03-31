class W42 < Formula
  desc "CLI for the Web42 Agent Network"
  homepage "https://github.com/yarn-rp/web42-network"
  version "0.1.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.24/w42-darwin-arm64"
      sha256 "1990af66ce7455a7a2571b4e9abb4cb261eafc0de1646c533efc03fa3b327ac6"
    else
      url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.24/w42-darwin-x64"
      sha256 "fcac699b4bb743cad6670a1ab153360032ba3dd990ff78756e650e5ab600b368"
    end
  end

  on_linux do
    url "https://github.com/yarn-rp/web42-network/releases/download/cli/v0.1.24/w42-linux-x64"
    sha256 "59baf8eea372ce2c149839a2f75e8c7b0d3282ab2adc40b5b3472cdc2a324179"
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "w42"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/w42 --version").strip
  end
end
