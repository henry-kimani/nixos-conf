{ pkgs, ... }:

pkg.stdenv.mkDerivation {
  pname = "install";
  version = "0.1";

  src = ./.;

  buildInputs = [ pkgs.bash ];

  installPhase = ''
    mkdir -p $out/bin
    cp install.sh $out/bin/myscript
    chmod +x $out/bin/install
  '';
}

