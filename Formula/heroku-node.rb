class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-11.14.0.tar.xz"
  sha256 "71794cf18de482a2340da9e7eaefcc7ef8acdf5c85ae31777be4deb0f8a615cd"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
