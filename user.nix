{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 

  programs.zsh.oh-my-zsh = {
    enable = true;
    plugins = [ "git" "thefuck" "volta" "rust" "rvm" "zoxide"];
  }
}
