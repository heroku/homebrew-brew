class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.9.0.tar.xz"
  sha256 "b22510e625afacde521d5b6f0099854231cd290d75fc1361ff22125572e20580"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
