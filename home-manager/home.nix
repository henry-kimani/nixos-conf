{ config, pkgs, ... }: {
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "hart";
  home.homeDirectory = "/home/hart";

  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # pkgs.hello
    pkgs.acpi # for the battery to display correctly on i3blocks
    pkgs.sysstat # performance monitoring tool
    pkgs.alacritty
    pkgs.git
    pkgs.lf # Terminal file manager
    pkgs.kdePackages.dolphin # GUI file manager
    pkgs.nautilus
    pkgs.fzf
    pkgs.bun
    pkgs.firefox
    pkgs.kitty
    pkgs.gnome-music
    pkgs.kdePackages.dragon
    pkgs.gcc
    pkgs.nitrogen
    pkgs.feh
    pkgs.imagemagick

    (pkgs.nerdfonts.override { fonts = [ "Hack" "Noto" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  programs.git = {
    enable = true;
    userName = "kim henry";
    userEmail = "kimanihenry14489@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  # Enabling Fonts
  fonts.fontconfig.enable = true;

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

  # Enabling theming
  gtk = {
    enable = true;
    theme.package = pkgs.orchis-theme;
    theme.name = "Orchis-Orange-Dark";
    iconTheme.package = pkgs.gruvbox-plus-icons;
    iconTheme.name = "Gruvbox-Plus-Dark";
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style = {
      name = "adwaita-dark";
      package = pkgs.adwaita-qt;
    };
  };

  home.pointerCursor = 
    let 
      getFrom = url: hash: name: {
        gtk.enable = true;
        x11.enable = true;
        name = name;
        size = 16;
        package = 
          pkgs.runCommand "moveUp" {} ''
            mkdir -p $out/share/icons
            ln -s ${pkgs.fetchzip {
              url = url;
              hash = hash;
            }} $out/share/icons/${name}
        '';
        };
    in
      getFrom 
        "https://github.com/ful1e5/fuchsia-cursor/releases/download/v2.0.0/Fuchsia-Amber.tar.gz"
        "sha256-bgEQ/l56TaxUdMB3iyJsMuLuc33mu5KMljPl2iSFNB4="
        "Fuchsia-Amber";

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/hart/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}