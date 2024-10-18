{ config, pkgs, ... }:
{
  imports = [
    ./zsh.nix
    ./packages.nix
    ./themes/theme.nix
    ./git.nix
  ];
}
