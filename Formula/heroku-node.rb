class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-8.7.0.tar.xz"
  sha256 "546284ad61d4876a120719c4278bec6240df75dfcc133d7db491dd9f186b33d3"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
