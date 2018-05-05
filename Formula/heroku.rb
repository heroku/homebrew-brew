class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-v7.0.26/heroku-v7.0.26.tar.xz"
  sha256 "1794b5b3e0c372c4cf477dd1df58c518361ba79e0adc97830641526d2272cd23"
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
