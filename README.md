# snowflake

a flake to manage all of my special computers.

## reference

- [home-manager](https://nix-community.github.io/home-manager/)
- [home-manager options](https://nix-community.github.io/home-manager/options.html)

## usage

nix home-manager configs created by [fleek](https://github.com/ublue-os/fleek), which died. so now it's my own frosted flake config.

aliases were added by fleek to the config to make it easier to use. to use them, run the following command:

```bash
$ apply-$(hostname)
```
for example:
```
$ apply-myna
```
on `myna`.

i also added an alias that automatically applies the flake if you have it checked out at `~/.snowflake`.

```bash
$ apply-flake
```

ymmv, ianal.

good luck, nix user who inevitably stumbles upon this while finding an existing config that works. It Works On My Machine!™

### in memoriam 

[fleek, 2023 - 2024](https://github.com/ublue-os/fleek)

you will be missed

🕯️🕯️🕯️

