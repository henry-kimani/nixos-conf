let
  custom = {
    background = "'#2D2A2E'";
    foreground = "'#f38d70'";
    text = "'#cdd6f4'";
  };
in
{ pkgs, lib, ... }: 
{
  programs.cava = {
    enable = true;
    package = pkgs.cava;
    settings = {
      general.framerate = 60;
      input.method = "pulse";
      smoothing.noise_reduction = 80;
      color = {
        background = lib.mkForce custom.background;
        foreground = lib.mkForce custom.foreground;
      };
    };
  };
}
