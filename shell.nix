{ config, pkgs, ...}: 

pkgs.mkShell {
  buildPackages = [
    vscode nodejs gcc
  ];
};

