{...}: {
  home.shellAliases = {
    "apply-crow" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@crow";
    "apply-fishcrow" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@fishcrow";
    "apply-ibis" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@ibis";
    "apply-toucan" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@toucan";
    "apply-myna" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@myna";
    "flakes" = "cd ~/.flake";
    "apply-flake" = "cd ~/.flake && nix run --impure home-manager/master -- -b bak switch --flake .#taco@$(hostname) && cd -";
    "read-news" = "cd ~/.flake && nix run home-manager/master -- --flake .#taco@$(hostname) news && cd -";
    "please" = "sudo";
    "ssh-agent-man" = "echo \"THEY'VE GIVEN YOU A NUMBER\" && eval `ssh-agent -s` ssh-add && echo \"AND TAKEN AWAY YOUR NAME\"";

    # replace cat with bat
    cat = "bat";

    # replace ls with lsd
    ls = "lsd";
  };
}
