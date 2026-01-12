{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    helium = {
      url = "github:amaanq/helium-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-cli = {
      url = "github:nix-community/nixos-cli";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      helium,
      nixos-cli,
      ...
    }@inputs:
    {
      nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.omrih = import ./home.nix;
              extraSpecialArgs = { inherit inputs; };
            };
          }
          nixos-cli.nixosModules.nixos-cli
        ];
      };
    };
}
