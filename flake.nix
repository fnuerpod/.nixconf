{
    description = "fnuer's flake";

    inputs = {
            nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    };

    outputs = { self, nixpkgs, ...}@inputs: {
        nixosConfigurations.fnunix = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                ./hosts/fnunix/configuration.nix
            ];
        };
    };
}