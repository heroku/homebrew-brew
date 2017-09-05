class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.14-185fde1-darwin-x64.tar.xz"
  version "6.14.14-185fde1"
  sha256 "b8b25a4778c7555e289e018d3d7dea3a55e84e90a746f1635768562cb5dbde38"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
