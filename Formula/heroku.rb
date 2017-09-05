class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.16-9ae58fc-darwin-x64.tar.xz"
  version "6.14.16-9ae58fc"
  sha256 "87428f5fc628a25b156a033c5c23ed81e167153c2283722d5ef9794a9b22b62c"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
