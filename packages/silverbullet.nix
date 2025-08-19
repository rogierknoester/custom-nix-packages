{
  fetchurl,
  pkgs,
}:
pkgs.silverbullet.overrideAttrs (oldAttrs: {
  version = "edge";

  src = fetchurl {
    url = "https://github.com/silverbulletmd/silverbullet/releases/download/edge/silverbullet.js";
    hash = "sha256-+Py+Am8GGjSr+wEwUMWjQq9XvLQZkeG6D54D38sL3Tc=";
  };
})
