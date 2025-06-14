{ lib, config, pkgs, ... }:
  let
    cfg = config.hart-user;
  in
{
  options.hart-user = {
    enable = lib.mkEnableOption "enable user module";
    userName = lib.mkOption {
      default = "hart";
      description = ''
        Demo Hart 
        '';
    };
  };

  config = lib.mkIf cfg.enable { 
    users.users.${cfg.userName}= {
      isNormalUser = true;
      initialPassword = "1234";
      extraGroups = [ "networkmanager" "wheel" "audio" ];
    };
  };
}
