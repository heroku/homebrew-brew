class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.5.0.tar.xz"
  sha256 "b77b253d8e90d1e0c1638ffb46a717044d4db1a54fb65205f40baab5b91da181"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
