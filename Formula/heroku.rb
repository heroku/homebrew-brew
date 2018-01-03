class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/heroku-6.15.3.tar.xz"
  sha256 "10d3a51a4eaab54ab603bb3f858f0617db419cf2767ed3fa92007137e37dbaa0"
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
