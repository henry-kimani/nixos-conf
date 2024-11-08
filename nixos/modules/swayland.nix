{ config, lib, pkgs }:
let
  cfg = config.swayland;
in
{
  options.swayland = {
    enable = lib.mkEnableOption "enable wayland compositor";
  };

  config = lib.mkIf cfg.enable {
    services.displayManager.sddm.wayland.enable = false;

    programs.sway = {
      enable = true;
      xwayland.enable = true;
    };

    security.polkit.enable = true;

    enviroment.systemPackages = with pkgs; [
      rofi-wayland mako libnotify
      (pkgs.waybar = { 
        enable = true;
        overrideAttrs (oldAttrs: {
          mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
        })
      })
    ];
  };
}
