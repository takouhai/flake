{...}: {
  home.shellAliases = {
    # be nice
    "please" = "sudo";

    # shortcut to get to snowflake
    "snow" = "cd ~/.snowflake";

    # command to read the news
    "read-news" = "cd ~/.snowflake && nix run home-manager/master -- --flake .#taco@$(hostname) news && cd -";

    # generic command to apply snowflake
    "apply-flake" = "cd ~/.snowflake && nix run --impure home-manager/master -- -b bak switch --flake .#taco@$(hostname) && cd -";

    # specific commands to apply snowflakes to each machine if the former doesn't work
    "apply-crow" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@crow";
    "apply-fishcrow" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@fishcrow";
    "apply-ibis" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@ibis";
    "apply-toucan" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@toucan";
    "apply-myna" = "nix run --impure home-manager/master -- -b bak switch --flake .#taco@myna";

    # command to launch ssh-agent for me
    "ssh-agent-man" = "echo \"THEY'VE GIVEN YOU A NUMBER\" && eval `ssh-agent -s` ssh-add && echo \"AND TAKEN AWAY YOUR NAME\"";

    # replace cat with bat
    cat = "bat";

    # replace ls with lsd
    ls = "lsd";
  };
}
