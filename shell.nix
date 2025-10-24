{ pkgs, ...}: 

pkgs.mkShell {
  packages = [
    pkgs.nodejs_22 
    pkgs.gcc
    pkgs.python314
    pkgs.gnumake
  ];
}
