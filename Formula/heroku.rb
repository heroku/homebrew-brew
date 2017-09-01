class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.13-6ab5022-darwin-x64.tar.xz"
  version "6.14.13-6ab5022"
  sha256 "a99c3f35da0c773729186faed95172620ddd332996a39d62aaae3e54a6d0e0e1"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
