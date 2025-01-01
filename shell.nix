{...}: {
  programs.eza.extraOptions = [
    "--group-directories-first"
    "--header"
  ];
  # zsh
  programs.zsh.initExtra = ''
    . "$HOME/.cargo/env"
  '';
  programs.zsh.profileExtra = ''
    [ -r ~/.nix-profile/etc/profile.d/nix.sh ] && source  ~/.nix-profile/etc/profile.d/nix.sh
    export XCURSOR_PATH=$XCURSOR_PATH:/usr/share/icons:~/.local/share/icons:~/.icons:~/.nix-profile/share/icons
  '';
  programs.zsh.enableCompletion = true;
  programs.zsh.enable = true;
  programs.zsh.localVariables = {
    EDITOR = "nvim";
  };
}
