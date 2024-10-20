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
      enable = true;
      plugins = [
        { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1]; }
      ];
    };

    initExtra = ''
      source ~/.p10k.zsh
    '';
  };
}
