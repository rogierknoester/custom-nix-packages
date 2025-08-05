{
  fetchurl,
  pkgs,
}:
pkgs.silverbullet.overrideAttrs (oldAttrs: {
  version = "edge";

  src = fetchurl {
    url = "https://github.com/silverbulletmd/silverbullet/releases/download/edge/silverbullet.js";
    hash = "sha256-KXisExTWWOZf16FfX3MYapmDZV362XZBc6K4aCQl8Nk=";
  };
})
