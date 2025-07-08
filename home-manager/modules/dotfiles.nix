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

  xresources = {
    properties = {
      "XTerm.vt100.locale" = false;
      "XTerm.vt100.utf8" = true;
      "XTerm.vt100.saveLines" = 4096;
      "Xcursor.theme" = "Fuchsia-Amber";
    };
    extraConfig = builtins.readFile(
      pkgs.fetchFromGitHub {
        owner = "mbadolato";
        repo = "iTerm2-Color-Schemes";
        rev = "506ab2b98b6546d1dc46327dfa1e1e3f8363fbc0";
        hash = "sha256-gEdpowrYvDQ6ICBWxk5VKiYpmrJq+XvBPhgjcqvAGiE=";
      } + "/Xresources/Monokai Pro"
    );
  };
}
