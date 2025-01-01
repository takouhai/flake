{...}: {
  home.shellAliases = {
    "apply-crow" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@crow";
    "apply-fishcrow" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@fishcrow";
    "apply-ibis" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@ibis";
    "apply-myna" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@myna";
    "flakes" = "cd ~/.flake";
    "apply-flake" = "cd ~/.flake && nix run --impure home-manager/master -- -b bak switch --flake .#taco@$(hostname) && cd -";
    "read-news" = "nix run home-manager/master -- --flake .#taco@$(hostname) news";
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
