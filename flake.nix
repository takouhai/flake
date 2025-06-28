{
  description = "flake: taco's frosted flake configuration for making the terminal cool and usable";

  inputs = {
    lix = {
      url = "git+https://git.lix.systems/lix-project/lix";
    };

    nixpkgs.url = "nixpkgs/master";

    lix-module = {
      url = "git+https://git.lix.systems/lix-project/nixos-module";
      inputs.lix.follows = "lix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    nixpkgs,
    lix-module,
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
          lix-module.nixosModules.default
          # Host Specific config
          ./myna/taco.nix
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
          lix-module.nixosModules.default
          # Host Specific config
          ./fishcrow/taco.nix
          {
            nixpkgs.overlays = [];
          }
        ];
      };

      "taco@crow" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = {inherit inputs;}; # Pass flake inputs to our config
        modules = [
          ./home.nix
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          lix-module.nixosModules.default
          # Host Specific config
          ./crow/taco.nix
          {
            nixpkgs.overlays = [];
          }
        ];
      };

      "taco@toucan" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = {inherit inputs;}; # Pass flake inputs to our config
        modules = [
          ./home.nix
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          lix-module.nixosModules.default
          # Host Specific config
          ./toucan/taco.nix
          {
            nixpkgs.overlays = [];
          }
        ];
      };

      "taco@ibis" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-darwin; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = {inherit inputs;}; # Pass flake inputs to our config
        modules = [
          ./home.nix
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          lix-module.nixosModules.default
          # Host Specific config
          ./ibis/taco.nix
          {
            nixpkgs.overlays = [];
          }
        ];
      };
    };
  };
}
