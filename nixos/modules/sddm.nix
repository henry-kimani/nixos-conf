{ lib, config, pkgs, ... }:
let
  cfg = config.sddm;
in
{
  options.sddm = {
    enable = lib.mkEnableOption "enable sddm-display manager module";
  };

  config = lib.mkIf cfg.enable {
    services.displayManager = {
      autoLogin.user = null;
      autoLogin.enable = lib.mkForce false;
      sddm.enable = lib.mkForce true;
      sddm.theme = "${import ./sddm-theme.nix { inherit pkgs; }}";
      # execCmd = "${pkgs.lightdm}/bin/lightdm";
    };
  };
}
