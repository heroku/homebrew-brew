class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-8.4.0.tar.xz"
  sha256 "6fbfbe01ef9a7411eab9e0e4b679da8eefb495ff7e1fbd116011ee7409046ee7"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
