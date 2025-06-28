{...}: {
  home.username = "taco";
  home.homeDirectory = "/home/taco";

  home.sessionPath = ["/usr/local/go/bin"];
  programs.zsh.initContent = ''
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  '';
}
