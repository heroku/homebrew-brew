class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.2.1.tar.xz"
  sha256 "5f9846fd7e82dbded78bea4d6466210cf457b79989821d772eb9424c9db59d45"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
