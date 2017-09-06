class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-8.4.0.tar.xz"
  sha256 "c59e61b2cbcb81dbd7881734ef64480c82086e92185d15aaefacb23cf8d3e63b"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
