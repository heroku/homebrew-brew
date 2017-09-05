class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.14.15-a1e54d1-darwin-x64.tar.xz"
  version "6.14.15-a1e54d1"
  sha256 "298bd8e159ffa3f111ab321b88c1eecfe255e52a7030af9bf0c35ccd49137938"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
