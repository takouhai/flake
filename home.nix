{ config, pkgs, misc, ... }: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };
  
  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  home.packages = [
    pkgs.asciiquarium
    pkgs.btop
    pkgs.cheat
    pkgs.dog
    pkgs.du-dust
    pkgs.fzf
    pkgs.git
    pkgs.github-cli
    pkgs.glab
    pkgs.glances
    pkgs.glow
    pkgs.gping
    pkgs.helix
    pkgs.hexyl
    pkgs.htop
    pkgs.httpie
    pkgs.hyperfine
    pkgs.iotop
    pkgs.jq
    pkgs.jq
    pkgs.just
    pkgs.lazygit
    pkgs.lsd
    pkgs.neofetch
    pkgs.neovim
    pkgs.nnn
    pkgs.oh-my-zsh
    pkgs.onefetch
    pkgs.oneko
    pkgs.pinentry-curses
    pkgs.pls
    pkgs.ripgrep
    pkgs.ripgrep
    pkgs.shellcheck
    pkgs.sl
    pkgs.thefuck
    pkgs.tldr
    pkgs.tmatrix
    pkgs.volta
    pkgs.vscode
    pkgs.xplr
    pkgs.yq-go
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion = "23.11"; 
  programs.home-manager.enable = true;
}
