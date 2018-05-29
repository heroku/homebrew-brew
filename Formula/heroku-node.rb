class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.1.0.tar.xz"
  sha256 "4ad478bcf8b268c600651aecd1e06be59856c3bc410f22f564e8cbbcbca49cab"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
