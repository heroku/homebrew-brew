class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.7.0.tar.xz"
  sha256 "944e495f2caec17b108f3242e226385048d1cc0839661bfe22f398ae27225f42"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
