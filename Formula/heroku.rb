class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.12-d2a7222-darwin-x64.tar.xz"
  version "6.14.12-d2a7222"
  sha256 "a95301da1d5069cd2ab7603cf65b454ff1c0a9057f1d4b0afb07d328cc0796c9"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
