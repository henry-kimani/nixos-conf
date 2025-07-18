{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    /* Zen browser flake */
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... }@inputs: 
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      zen = inputs.zen-browser.packages.${system};
    in {

      nixosConfigurations.default = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit pkgs; };
        modules = [ ./nixos/configuration.nix ];
      };

      homeConfigurations = {
        henry = inputs.home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = { inherit zen; };
          modules = [ 
            ./home-manager/home.nix 
          ];
        };
      };

      devShells.${system}.work = (import ./shell.nix { inherit pkgs; });
    };
}
