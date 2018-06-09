class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-10.4.0.tar.xz"
  sha256 "27a75e6f75362aac92ca4f393d76cf8c2890f695f217e91d968ccce3fb956814"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
