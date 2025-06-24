{ pkgs, config, lib, ...}: 
let
  cfg = config.postgres;
in
{
  options.postgres = {
    enable = lib.mkEnableOption "enable postgres module";
  };

  config = lib.mkIf cfg.enable {

  };
}
