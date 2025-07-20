{
  description = "A collection of packages that are not in Nixpkgs or are outdated";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
      ];
      systems = import inputs.systems;

      perSystem =
        { config, pkgs, ... }:
        {
        };
    };
}
