{
  description = "taco eject fleek";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
    # Home manager
    home-manager.url = "https://flakehub.com/f/nix-community/home-manager/0.2311.3180.tar.gz";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    # Overlays
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: {
    homeConfigurations = {
      "taco@myna" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = {inherit inputs;}; # Pass flake inputs to our config
        modules = [
          ./home.nix
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./myna/taco.nix
          ./myna/custom.nix
          {
            nixpkgs.overlays = [];
          }
        ];
      };

      "taco@fishcrow" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = {inherit inputs;}; # Pass flake inputs to our config
        modules = [
          ./home.nix
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./fishcrow/taco.nix
          ./fishcrow/custom.nix
          {
            nixpkgs.overlays = [];
          }
        ];
      };
    };
  };
}
