{ config, pkgs, ... }:
{
# Enabling zsh
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
    # Plugins
    zplug = {
      enable = false;
      plugins = [
      { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; }
      ];
    };

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
    };

#    initExtra = ''
#      source ~/.p10k.zsh
#    '';
  };
}
