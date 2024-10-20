{ config, pkgs, ... }: 
{
  programs.git = {
    enable = true;
    userName = "kim henry";
    userEmail = "kimanihenry14489@gmail.com";
    aliases = {
      ct = "commit";
      co = "checkout";
      s = "status";
    };
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
