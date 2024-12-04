{ pkgs, ...}: 

pkgs.mkShell {
  nativeBuildPackages = [
    pkgs.nodejs_22 pkgs.gcc
  ];
}

