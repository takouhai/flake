{...}: {
  programs.eza.extraOptions = [
    "--group-directories-first"
    "--header"
  ];
  # zsh
  programs.zsh.profileExtra = ''
    [ -r ~/.nix-profile/etc/profile.d/nix.sh ] && source  ~/.nix-profile/etc/profile.d/nix.sh
    export XCURSOR_PATH=$XCURSOR_PATH:/usr/share/icons:~/.local/share/icons:~/.icons:~/.nix-profile/share/icons
    export VOLTA_HOME="$HOME/.volta"
    export PATH="$VOLTA_HOME/bin:$PATH"
  '';
  programs.zsh.enableCompletion = true;
  programs.zsh.enable = true;
  programs.zsh.localVariables = {
    EDITOR = "nvim";
  };
}
