{ pkgs, ... }:
{
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
    pkgs.ripgrep
    pkgs.cht-sh
    pkgs.whatsapp-for-linux
    pkgs.youtube-music

    (pkgs.nerdfonts.override { fonts = [ "Hack" "Noto" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
}
