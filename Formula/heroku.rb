class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.9-fdcf18a-darwin-x64.tar.xz"
  version "6.14.9-fdcf18a"
  sha256 "b249b37c73f5b513e1ecc0c88bd18932652e0698f1a6cf9deef595030ef9967b"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
