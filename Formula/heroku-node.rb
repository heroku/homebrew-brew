class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-9.10.1.tar.xz"
  sha256 "80ed39f2ec33fad6638ecfc49563b6c4eed5ec090f5955331e436322f84bcd3b"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
