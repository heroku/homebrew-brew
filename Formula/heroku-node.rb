class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-9.8.0.tar.xz"
  sha256 "9124b9c82827f5d73edfcbd26e9d027e7fbff59ce01ef7be02243f117e9fc576"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
