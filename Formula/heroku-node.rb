class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.6.0.tar.xz"
  sha256 "daa072c0e22cb59a8cf5e992922964517d6bca107affb09a4e13b891c8408ddb"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
