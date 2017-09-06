class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-8.4.0.tar.xz"
  sha256 "f6998a498626aea7717e74f7236ed0b3c7115bf24f6d966984440d7689ef78a5"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
