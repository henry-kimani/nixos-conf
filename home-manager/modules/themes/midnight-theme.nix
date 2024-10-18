{ pkgs }: 

pkgs.stdenv.mkDerivation {
  name = "midnight-theme";

  src = pkgs.fetchFromGitHub {
    owner = "i-mint";
    repo = "midnight";
    rev = "d49ab403d118568dc262d5e57b50e1ba022f486b";
    hash = "sha256-syKWR15u/cXyp8Os2DwqScXj5NkpbxTys5Wb12DthWg=";
  };
  installPhase = ''
    mkdir -p $out/share/themes/
    cp -r ./* $out/share/themes/
  '';
}
