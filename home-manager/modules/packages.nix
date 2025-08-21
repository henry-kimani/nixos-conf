{ config, pkgs, zen, ... }:
{
  
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  home.packages = [
    # Browsers
    zen.twilight-official # Zen browser flake
    pkgs.firefox
    pkgs.microsoft-edge

    # Dependancies
    pkgs.acpi # for the battery to display correctly on i3blocks
    pkgs.sysstat # performance monitoring tool
    pkgs.ripgrep # For nvim

    # Terminals
    pkgs.kitty
    pkgs.alacritty

    # Dev tools
    pkgs.git
    pkgs.fzf
    pkgs.cht-sh
    pkgs.vscode
    pkgs.dotnet-sdk_9

    # Javascript runtimes
    pkgs.nodejs_22
    pkgs.bun # bun runtime

    # Compilers
    pkgs.gcc # C/C++ compiler
    pkgs.rustc # Rust compiler

    # Package managers
    pkgs.pnpm # javascript package manager
    pkgs.cargo # Rust package manager

    # Language servers
    pkgs.rust-analyzer # Rust language server
    pkgs.clang-tools # C C++ language server
    pkgs.lua-language-server # lua language server
    pkgs.jdt-language-server # java language server

    # Essentials
    pkgs.unzip
    pkgs.networkmanagerapplet
    pkgs.brightnessctl # Control brightness
    pkgs.pavucontrol # GUI to control my mic and speaker
    pkgs.pamixer # CLI to control my mic

    # Programs
    pkgs.nautilus # File manager
    pkgs.gnome-music
    pkgs.nitrogen # i3 blackground manager
    pkgs.feh # View images
    pkgs.imagemagick # Take screenshots and edit images via CLI
    pkgs.flameshot # Take screenshots
    pkgs.libreoffice-still
    pkgs.totem
    pkgs.gimp
    pkgs.inkscape
    pkgs.blender
    pkgs.itch # itch.io
    pkgs.godot_4 # game engine
    pkgs.unityhub
    pkgs.discord

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    (pkgs.writeShellScriptBin "henry" ''
      echo "Hello, ${config.home.username}!"
    '')
  ];
}
