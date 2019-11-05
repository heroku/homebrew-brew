class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-12.13.0.tar.xz"
  sha256 "fb503f8862cdb96d6bdeac3d9df54628b7c0a393c99f555c017711c3e1438cea"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
