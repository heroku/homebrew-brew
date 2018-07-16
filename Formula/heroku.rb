class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-v7.6.0/heroku-v7.6.0.tar.xz"
  sha256 "9093e7e1c644150b802d95572d99aefa4d895159ddd7de10ca48f35986f73798"
  depends_on "heroku/brew/heroku-node"

  def install
    inreplace "bin/heroku", /^CLIENT_HOME=/, "export HEROKU_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    inreplace "bin/heroku", "\"$DIR/node\"", "#{Formula["heroku-node"].opt_share}/node"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"

    bash_completions.install "./packages/autocomplete/autocomplete/brew/bash"
    zsh_completions.install "./packages/autocomplete/autocomplete/brew/zsh"
    system "heroku", "autocomplete", "--refresh-cache"
  end

  def caveats; <<~EOS
    To install and use Heroku's autocomplete:
      1) Install homebrew's completion, if not already installed
        OR
      2) Run
          $ heroku autocomplete
  EOS
  end

  test do
    system bin/"heroku", "version"
  end
end
