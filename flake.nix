{
  description = "A collection of packages that are not in Nixpkgs or are outdated";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; }

      {
        imports = [
        ];
        systems = import inputs.systems;

        perSystem =
          { config, pkgs, ... }:
          {
            packages = with pkgs; {
              silverbullet = callPackage ./packages/silverbullet.nix { };
            };
          };

        flake = {
          overlays.default = final: prev: {
            silverbullet = prev.silverbullet.overrideAttrs (oldAttrs: {
              version = "edge";

              src = final.fetchurl {
                url = "https://github.com/silverbulletmd/silverbullet/releases/download/edge/silverbullet.js";
                hash = "sha256-+Py+Am8GGjSr+wEwUMWjQq9XvLQZkeG6D54D38sL3Tc=";
              };
            });
          };
        };
      };
}
