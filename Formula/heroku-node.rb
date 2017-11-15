class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-9.2.0.tar.xz"
  sha256 "c7c2e5a680f52e102bf3d1794b46d92a88ae55c9053722039356fbe8509f720f"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
