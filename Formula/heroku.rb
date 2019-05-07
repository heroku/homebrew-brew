class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-v7.24.3/heroku-v7.24.3.tar.xz"
  sha256 "9b1c21c622d70bd8bcb029a89c31d00c315c38b99b6dcf880d7e886f34d488ef"
  depends_on "heroku/brew/heroku-node"

  def install
    inreplace "bin/heroku", /^CLIENT_HOME=/, "export HEROKU_OCLIF_CLIENT_HOME=#{lib/"client"}\nCLIENT_HOME="
    inreplace "bin/heroku", "\"$DIR/node\"", "#{Formula["heroku-node"].opt_share}/node"
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"

    bash_completion.install "#{libexec}/node_modules/@heroku-cli/plugin-autocomplete/autocomplete/brew/bash"
    zsh_completion.install "#{libexec}/node_modules/@heroku-cli/plugin-autocomplete/autocomplete/brew/zsh/_heroku"
  end

  def caveats; <<~EOS
    To use the Heroku CLI's autocomplete --
      Via homebrew's shell completion:
        1) Follow homebrew's install instructions https://docs.brew.sh/Shell-Completion
            NOTE: For zsh, as the instructions mention, be sure compinit is autoloaded
                  and called, either explicitly or via a framework like oh-my-zsh.
        2) Then run
          $ heroku autocomplete --refresh-cache

      OR

      Use our standalone setup:
        1) Run and follow the install steps:
          $ heroku autocomplete
  EOS
  end

  test do
    system bin/"heroku", "version"
  end
end
