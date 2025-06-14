{ config, lib, pkgs, ... }:
let
  cfg = config.podman;
in
{

  options.podman = {
    enable = lib.mkEnableOption "enable podman module";
  };
  
  config = lib.mkIf cfg.enable {
    virtualisation = {
      containers.enable = true;
      podman = {
        enable = true;
        # Create a docker alias for podman
        dockerCompat = true;
        # Required for containers under podman-compose to be able to talk to each other
        defaultNetwork.settings.dns_enable = true;
      };
    };
  };
}
