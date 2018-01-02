class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-9.3.0.tar.xz"
  sha256 "7ee41a90d27e6a23615045ebf95ddc025e65f4a30bf2c929ad1e4c812060918b"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
