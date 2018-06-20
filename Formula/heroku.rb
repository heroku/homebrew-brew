class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-v7.4.3/heroku-v7.4.3.tar.xz"
  sha256 "428b3c5128b51f0db4607461f8bf6aef3e1ff8ef1b2f0bd6346ed6189eafeb91"
  depends_on "heroku/brew/heroku-node"

  def install
    inreplace "bin/heroku", /^CLIENT_HOME=/, "export HEROKU_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    inreplace "bin/heroku", "\"$DIR/node\"", "#{Formula["heroku-node"].opt_share}/node"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
