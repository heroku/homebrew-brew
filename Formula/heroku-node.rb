class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-11.0.0.tar.xz"
  sha256 "52502f47a45a964570148571c16d5c7f4d2367c621decee1005f326286720aca"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
