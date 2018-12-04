class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-11.3.0.tar.xz"
  sha256 "76dfad0a057053f164a595486612b48ee7131e46a672aded91a4a5ddee216f7c"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
