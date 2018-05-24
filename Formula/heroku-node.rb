class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.2.0.tar.xz"
  sha256 "dce85f85b924f2310264bdf40ea816e461ba9037bf722bf256b34186ac0f3b5b"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
