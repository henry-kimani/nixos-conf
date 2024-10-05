{ pkgs }:

pkgs.stdenv.mkDerivation {
  name = "gruvbox-plus";
  
  src = pkgs.fetchFromGitHub {
    owner = "SylEleuth";
    repo = "gruvbox-plus-icon-pack";
    rev = "262aa8c7f31fb61e87d0eb7c2e1690bdc7a1386b";
    hash = "sha256-qNresDX3/nZqSD8ygX9md8M8mtNs2TxCEiT9rN/RT6g=";
  };

  installPhase = ''
    mkdir -p $out
    cp -R ./* $out
  '';
}
