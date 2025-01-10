{...}: {
  programs.atuin.enable = true;
  programs.atuin.enableZshIntegration = true;
  programs.eza.enable = true;
  programs.bat.enable = true;
  programs.zoxide.enable = true;
  programs.starship.enable = true;
  programs.hyfetch = {
    enable = true;
    settings = {
      preset = "nonbinary";
      mode = "rgb";
      backend = "fastfetch";
      color_align = {
        mode = "horizontal";
      };
    };
  };
  programs.git = {
    enable = true;
    aliases = {
      pushall = "!git remote | xargs -L1 git push --all";
      graph = "log --decorate --oneline --graph";
      add-nowhitespace = "!git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero -";
    };

    userName = "taco";
    userEmail = "gpg@tacowolf.net";
    extraConfig = {
      push.autoSetupRemote = true;
      feature.manyFiles = true;
      init.defaultBranch = "main";
      gpg.format = "ssh";
    };

    signing = {
      key = "~/.ssh/id_ed25519";
      signByDefault = builtins.stringLength "~/.ssh/id_ed25519" > 0;
    };

    lfs.enable = true;
    ignores = [".direnv" "result"];
  };
}
