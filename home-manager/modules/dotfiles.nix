{ config, pkgs, ... }: {

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;
    ".p10k.zsh".source = ../../dotfiles/p10k/.p10k.zsh;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  xdg.configFile = {
    "alacritty".source = ../../dotfiles/alacritty;
    "nvim".source = ../../dotfiles/nvim;
    "rofi".source = ../../dotfiles/rofi;
    "tmux".source = ../../dotfiles/tmux;
    "i3".source = ../../dotfiles/i3;
  };

}
