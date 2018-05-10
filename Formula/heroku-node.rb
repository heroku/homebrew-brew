class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.1.0.tar.xz"
  sha256 "f2a3f215e1d84b3f544ebe00c48d3fc78973703d2594d4d9e1005c849bf617fd"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
