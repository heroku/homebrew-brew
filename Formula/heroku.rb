class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-v7.0.23/heroku-v7.0.23.tar.xz"
  sha256 "d483bf69d8e5c2e21c6679b438264e4e6f3da690d68a391ea994c45972329fc0"
  depends_on "heroku/brew/heroku-node"

  def install
    inreplace "bin/heroku", "\"$DIR/node\"", "#{Formula["heroku-node"].opt_share}/node"
    libexec.install Dir["*"]
    libexec.install Dir[".oclif.manifest.json"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
