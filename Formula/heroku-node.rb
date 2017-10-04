class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-8.5.0.tar.xz"
  sha256 "2e0ccf6e8674114e0dd7e5e80a09d895427382f3636f8dac9bbf54d582b19ff6"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
