{
  fetchurl,
  pkgs,
}:
pkgs.silverbullet.overrideAttrs (oldAttrs: {
  version = "edge";

  src = fetchurl {
    url = "https://github.com/silverbulletmd/silverbullet/releases/download/edge/silverbullet.js";
    hash = "sha256-WXjbrFUpLlgIi9Y16i97bHFanx08sBX9ZySNb8QbmYo=";
  };
})
