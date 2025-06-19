{...}: {
  programs.zsh.oh-my-zsh = {
    enable = true;
    plugins = ["git" "volta" "rust" "rvm" "zoxide"];
  };
}
