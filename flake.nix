{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... }@inputs: 
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {

    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit pkgs;};
      modules = [ ./nixos/configuration.nix ];
    };

    homeConfigurations = {
      henry = inputs.home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home-manager/home.nix ];
      };
    };

    devShells.${system}.work = (import ./shell.nix { inherit pkgs; });
  };
}
