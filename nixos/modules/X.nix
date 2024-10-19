{ config, lib, pkgs, ... }: 
let
  cfg = config.x;
in
{
  options.x = {
    enable = lib.mkEnableOption "enable x server";
  };

  config = lib.mkIf cfg.enable = {
    services.xserver = {
      enable = true;
      desktopManager.plasma5.enable = lib.mkForce false;
      windowManager.i3 = {
        enable = true;
        extraPackages = with pkgs; [
          dmenu i3status i3lock i3blocks
        ];
      };
    };
  };
}
