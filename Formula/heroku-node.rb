class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-11.10.1.tar.xz"
  sha256 "7ef5804562b1b28cce480ed31ed20230a262c20a19ffe611b50fb1d76dec8499"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
