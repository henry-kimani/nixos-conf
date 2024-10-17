{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
  pname = "install.sh";
  version = "0.1";

  src = ./.;

  buildInputs = [ pkgs.bash ];

  installPhase = ''
    mkdir -p $out/bin
    cp install.sh $out/bin
    chmod +x $out/bin/install.sh
  '';
}

