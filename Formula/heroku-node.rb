class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-9.9.0.tar.xz"
  sha256 "26e59bff51419569b92082302867065e244a1b94421b9bb8ef79f6ba57d5f958"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
