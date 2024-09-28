{
  pkgs,
  misc,
  ...
}: {
  home.sessionPath = [
    "$HOME/bin"
    "$HOME/.local/bin"
    "$HOME/.cargo/env"
  ];
}
