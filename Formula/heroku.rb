class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.3-9284403-darwin-x64.tar.xz"
  version "6.14.3-9284403"
  sha256 "a466e66cad83e578029ff19c5f52a561cff85c6f3af4ac31d23361f16ec173a8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
