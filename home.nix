{
  config,
  pkgs,
  misc,
  ...
}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  home.packages = [
    pkgs.alejandra
    pkgs.asciiquarium
    pkgs.btop
    pkgs.cheat
    pkgs.direnv
    pkgs.dogdns
    pkgs.du-dust
    pkgs.fastfetch
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
    pkgs.jq
    pkgs.lazygit
    pkgs.lsd
    pkgs.neovim
    pkgs.nil
    pkgs.nixd
    pkgs.nnn
    pkgs.oh-my-zsh
    pkgs.onefetch
    pkgs.pinentry-curses
    pkgs.pls
    pkgs.ripgrep
    pkgs.shellcheck
    pkgs.sl
    pkgs.tealdeer
    pkgs.thefuck
    pkgs.tmatrix
    pkgs.volta
    pkgs.xplr
    pkgs.yq-go
  ];
  fonts.fontconfig.enable = true;
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
