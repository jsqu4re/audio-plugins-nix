{pkgs, ...}:
pkgs.stdenv.mkDerivation {
  name = "TAL-Drum";
  src = pkgs.fetchurl {
    url = "https://tal-software.com/downloads/plugins/TAL-Drum_64_linux.zip";
    sha256 = "sha256-V+kvUqpzx/MMVrVQe+lT7R/XBg2s8lsqmcLa+JpVDGQ=";
  };

  passthru.demo = true;

  nativeBuildInputs = [pkgs.unzip];

  installPhase = ''
    cp -r . $out
  '';

  sourceRoot = ".";
}
