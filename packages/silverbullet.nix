{
  fetchurl,
  pkgs,
}:
pkgs.silverbullet.overrideAttrs (oldAttrs: {
  version = "edge";

  src = fetchurl {
    url = "https://github.com/silverbulletmd/silverbullet/releases/download/edge/silverbullet.js";
    hash = "sha256-mEYDceKYwX2ZnKjVaAf8uZgwCDXkjFOU2lwILcv9K+0=";
  };
})
