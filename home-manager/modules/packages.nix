{ pkgs, ... }:
{
  
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

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
    pkgs.feh # View images
    pkgs.imagemagick # Take screenshots and edit images via CLI
    pkgs.ripgrep
    pkgs.cht-sh
    pkgs.youtube-music
    pkgs.brightnessctl
    pkgs.flameshot # Take screenshots
    pkgs.networkmanagerapplet
    pkgs.unzip
    pkgs.libreoffice-still
    pkgs.totem
    pkgs.gimp
    pkgs.inkscape
    pkgs.pnpm # javascript package manager
    pkgs.blender
    pkgs.pavucontrol # GUI to control my mic and speaker
    pkgs.pamixer # CLI to control my mic
    pkgs.godot_4 # game engine
    pkgs.itch # itch.io
    pkgs.brave # Browser

    pkgs.cargo # Rust package manager
    pkgs.rust-analyzer # Rust language server
    pkgs.rustc # Rust compiler

    pkgs.clang-tools # C C++ language server
    pkgs.lua-language-server # lua language server
    pkgs.jdt-language-server # java language server

    pkgs.microsoft-edge
    pkgs.discord
    pkgs.vscode
    pkgs.nodejs_22

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
}
