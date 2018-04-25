class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.0.0.tar.xz"
  sha256 "b5c2bca98ae5df7cdf1f3fa7ede64b0fb1c77998289c003dbca75dd67835886f"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
