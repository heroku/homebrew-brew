class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.11-5d69319-darwin-x64.tar.xz"
  version "6.14.11-5d69319"
  sha256 "538c78610e04491f455978b2c8f06f4bca90bf447f6f3e9c53b4f54b21e90364"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
