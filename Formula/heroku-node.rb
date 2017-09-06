class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-8.4.0.tar.xz"
  sha256 "618565f349317adaa98d6fca46f819ec1fff7d19aafedf63b0098fa0da0f2fbb"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
