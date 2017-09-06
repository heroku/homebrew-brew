class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/heroku-v6.14.18.tar.xz"
  sha256 "7d0b57a047699f488b4cdb7cf1cc3ffa58bab8e63b0284c2390b201a87c89b41"
  depends_on "heroku-node"

  def install
    inreplace "bin/heroku", "\"$DIR/node\"", "#{Formula["heroku-node"].opt_share}/node"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
