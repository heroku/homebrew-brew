class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-v7.7.2/heroku-v7.7.2.tar.xz"
  sha256 "f2ca027eb3b6ac70f74ce829f326d88c3fc0eff5669e4e2dea05a9ac201df597"
  depends_on "heroku/brew/heroku-node"

  def install
    inreplace "bin/heroku", /^CLIENT_HOME=/, "export HEROKU_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    inreplace "bin/heroku", "\"$DIR/node\"", "#{Formula["heroku-node"].opt_share}/node"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"

    bash_completion.install "#{libexec}/node_modules/@heroku-cli/plugin-autocomplete/autocomplete/brew/bash"
    zsh_completion.install "#{libexec}/node_modules/@heroku-cli/plugin-autocomplete/autocomplete/brew/zsh/_heroku"
    system bin/"heroku", "autocomplete", "bash", "--refresh-cache"
  end

  def caveats; <<~EOS
    To use the Heroku CLI's autocomplete:
      1) Use homebrew's shell completion - https://docs.brew.sh/Shell-Completion
        OR
      2) Run and follow the install steps:
          $ heroku autocomplete
  EOS
  end

  test do
    system bin/"heroku", "version"
  end
end
