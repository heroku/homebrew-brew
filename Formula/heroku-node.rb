class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-11.1.0.tar.xz"
  sha256 "dae4c0eaa39401d7567670305d6e4b370acd2c8ba3d584a63e498a0c1b0b910c"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
