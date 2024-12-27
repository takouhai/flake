{
  pkgs,
  misc,
  ...
}: {
  programs.atuin.enable = true;
  programs.atuin.enableZshIntegration = true;
  programs.eza.enable = true;
  programs.bat.enable = true;
  programs.zoxide.enable = true;
  programs.starship.enable = true;
}
