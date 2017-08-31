class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.10-bbe4083-darwin-x64.tar.xz"
  version "6.14.10-bbe4083"
  sha256 "c2d864b24073b8237862e0c031eeb6fab7cef4b386062a9c598009bc2a533de8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
