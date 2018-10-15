class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.12.0.tar.xz"
  sha256 "569184febbe9b2cb432745656ae3b544367c00aaac3f27f39a1b32fb07f54eab"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
