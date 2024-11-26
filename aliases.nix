{
  pkgs,
  misc,
  ...
}: {
  home.shellAliases = {
    "apply-fishcrow" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@fishcrow";
    "apply-myna" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@myna";
    "apply-ibis" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@ibis";
    "flakes" = "cd ~/.flake";
    "please" = "sudo";
    "ssh-agent-man" = "echo \"THEY'VE GIVEN YOU A NUMBER\" && eval `ssh-agent -s` ssh-add && echo \"AND TAKEN AWAY YOUR NAME\"";

    # bat --plain for unformatted cat
    catp = "bat -P";

    # replace cat with bat
    cat = "bat";

    # replace ls with lsd
    ls = "lsd";
  };
}
