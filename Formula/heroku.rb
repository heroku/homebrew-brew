class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  if OS.mac?
    url "https://cli-assets.heroku.com/heroku-v7.41.1/heroku-v7.41.1.tar.xz"
    sha256 "2b0412e8ac2400ba587bbc38c969b3785a5e9d142dc77656b2a8f33b3398348a"
  elsif OS.Linux?
    if Hardware::CPU.intel?
      # No version for the linux gz?
      url "https://cli-assets.heroku.com/heroku-linux-x64.tar.gz"
      sha256 "5d1ef7e843738d597cd0360d07558832e4c8c91a2a6ffac3c671bbb4b6aab87c"
    else # arm
      url "https://cli-assets.heroku.com/heroku-v7.41.1/heroku-v7.41.1-linux-arm.tar.gz"
      sha256 "af69532cb9ef95ae6447a2bc7f86149ed0057748dbca4f634ec167977b48f2d0"
    end
  end

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
