{...}: {
  home.username = "taco";
  home.homeDirectory = "/home/taco";
  programs.zsh.initContent = ''
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  '';
}
