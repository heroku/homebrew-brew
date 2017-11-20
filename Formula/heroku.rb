class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/heroku-6.14.38.tar.xz"
  sha256 "25df92680f55f0b1bbd427ae7e98f64118eb90a4d58f6ac106488d18f0523aef"
  depends_on "heroku/brew/heroku-node"

  def install
    inreplace "bin/heroku", "\"$DIR/node\"", "#{Formula["heroku-node"].opt_share}/node"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
