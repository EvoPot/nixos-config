{

  description = "My NixOS flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/home-manager";
    }; 
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };


  outputs = {self,nixpkgs,zen-browser,...}@inputs :
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {inherit inputs;};
      modules = [
        ./configuration/configuration.nix
        inputs.home-manager.nixosModules.home-manager {
          
      home-manager.extraSpecialArgs = {inherit inputs; system = system;};
        }
      ];
    };
  };


}
