class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.4.1.tar.xz"
  sha256 "aa997f875e39e5e5c1d3abe693b542a22253640a002b4e78a220a106f3904111"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
