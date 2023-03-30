{
  description = "Flake for building NixOS for lima-vm";

  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;

  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      default = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
          ./iso-image.nix
          ./configuration.nix
        ];
      };
    };
  };
}
