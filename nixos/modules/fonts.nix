{ config, lib, pkgs, ... }: 
let
  cfg = config.fonts;
in
{
  options.fonts = {
    enable = lib.mkEnableOption "Enable fonts system wide";
  };
  
  config = lib.mkIf cfg.enable {
    fonts = {
      fontconfig = {
        enable = true;
        defaultFonts = {
          sansSerif = [ "Dejavu Sans" ];
          monospace = [ "Hack" ];
        };
      };
      packages = with pkgs; [
        nerd-fonts.noto
        nerd-fonts.hack
        dejavu_fonts
        bront_fonts
      ]; 
    };
  };

}
