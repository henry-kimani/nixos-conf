{config, pkgs, ...}:
{
  imports = [
    ./users/bundle.nix
    ./sddm.nix
    ./X.nix
  ];
}
