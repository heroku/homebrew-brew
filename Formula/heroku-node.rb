class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-8.4.0.tar.xz"
  sha256 "6c03ff93922c369c0f0678886f7581cde6353f1d1e54d1c4626ec5938bf56396"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
