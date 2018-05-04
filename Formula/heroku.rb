class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-v7.0.25/heroku-v7.0.25.tar.xz"
  sha256 "d88dc2b19bb5aae3c3b5a4d093c2102ad8c835b87b62af618ba75e634068289e"
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
