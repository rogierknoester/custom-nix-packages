{
  fetchurl,
  pkgs,
}:
pkgs.silverbullet.overrideAttrs (oldAttrs: {
  version = "edge";

  src = fetchurl {
    url = "https://github.com/silverbulletmd/silverbullet/releases/download/edge/silverbullet.js";
    hash = "sha256-MY8ewq0rxjnazEZcAuc7RDc35Vee3W/2pVa4VQW9Kcs=";
  };
})
