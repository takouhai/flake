{...}: {
  home.username = "taco";
  home.homeDirectory = "/home/taco";
  programs.zsh.initContent = ''
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin:$HOME/.cargo/bin
  '';
}
