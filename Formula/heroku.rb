class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.18-0510d2d-darwin-x64.tar.xz"
  version "6.14.18-0510d2d"
  sha256 "185b7e2b5dcf940c7a9d918dd4cb8d056f258f392cfd41c4f41f48db59bb9448"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
