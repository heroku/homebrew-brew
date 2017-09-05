class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.17-790e0c0-darwin-x64.tar.xz"
  version "6.14.17-790e0c0"
  sha256 "8815c8610382db1d359c9be7ce5e8f1ed57a2c48a16765ccf187bfcbd7fb62e2"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
