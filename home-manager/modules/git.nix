{ config, pkgs, ... }: 
{
  programs.git = {
    enable = true;
    userName = "kim henry";
    userEmail = "kimanihenry14489@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
