class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-8.5.0.tar.xz"
  sha256 "85a955446796d2fdfb4ae994df78f22dd0517c21a1824b78393fe378e77b79fe"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
