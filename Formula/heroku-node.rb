class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-9.7.1.tar.xz"
  sha256 "e4eab3ac7bf32841059ac1344da051d22c617a8bbe339414683b099f103650a0"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
