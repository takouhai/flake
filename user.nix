{ pkgs, misc, ... }: {
  programs.zsh.oh-my-zsh = {
    enable = true;
    plugins = [ "git" "thefuck" "volta" "rust" "rvm" "zoxide"];
  };
}
