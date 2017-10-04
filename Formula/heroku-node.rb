class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-8.6.0.tar.xz"
  sha256 "9cb09e7e204ecc49598f04c4c06d5d03934ed940c6f57ac62addabfb449d8c5f"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
