{ lib, config, pkgs, ... }:
let
  cfg = config.henry-user;
in
{
  options.henry-user = {
    enable = lib.mkEnableOption "enable user module";
    userName = {
      default = "henry";
      description = ''
        henry
      '';
    };
  };

  config = lib.mkIf cfg.enable {
    users.users.${cfg.userName} = {
      isNormalUser = true;
      description = "henry";
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };
}
