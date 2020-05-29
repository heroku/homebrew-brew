class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  version: "7.41.1"

  if OS.mac?
    url "https://cli-assets.heroku.com/heroku-v#{version}/heroku-v#{version}.tar.xz"
    sha256 "2b0412e8ac2400ba587bbc38c969b3785a5e9d142dc77656b2a8f33b3398348a"

    depends_on "heroku/brew/heroku-node"

  elsif OS.Linux?
    if Hardware::CPU.intel?
      # No version for the linux gz?
      url "https://cli-assets.heroku.com/heroku-v#{version}/heroku-v#{version}-linux-x64.tar.gz"
    else # arm
      url "https://cli-assets.heroku.com/heroku-v#{version}/heroku-v#{version}-linux-arm.tar.gz"
    end
  end

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
