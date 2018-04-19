class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-9.11.1.tar.xz"
  sha256 "90d2cd8d86e12f870c333cf9eaf1bef440d2d6d478a006bab9a0563b2531b97e"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
