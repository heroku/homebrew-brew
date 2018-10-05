class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.11.0.tar.xz"
  sha256 "411bb5e3445bbcfd548fbad6b481bbfe32904604a165907b054e54577d82eb7e"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
