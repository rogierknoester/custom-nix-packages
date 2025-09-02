{
  fetchurl,
  pkgs,
}:
pkgs.silverbullet.overrideAttrs (oldAttrs: {
  version = "edge";

  src = fetchurl {
    url = "https://github.com/silverbulletmd/silverbullet/releases/download/2.0.0/silverbullet.js";
    hash = "sha256-O0QuzbY/ZdhOZvsUcgpZ55E+CSxbAsRxJmBQird5vCk=";
  };
})
