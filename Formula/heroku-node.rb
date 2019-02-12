class HerokuNode < Formula
  desc "node.js dependency for heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/homebrew/node-11.9.0.tar.xz"
  sha256 "a3c27b06ef0bf0f984bf37ddb1f9f1bebffab77ea52a23934b062976895237ed"

  def install
    share.install buildpath/"node"
  end

  # def test
  #   system bin/"node", "version"
  # end
end
