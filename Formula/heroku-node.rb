class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.10.0.tar.xz"
  sha256 "bd71ba00840c8308fde70c289b53816cfd01dd1efe47b2bcca08bb6c76c492f7"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
