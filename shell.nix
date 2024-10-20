{ config, pkgs, ...}: 

pkgs.mkShell {
  buildPackages = [
    nodejs gcc
  ];
};

