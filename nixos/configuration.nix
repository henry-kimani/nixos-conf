{ config, pkgs, lib, ... }:

{
  imports = [ 
#    <nixpkgs/nixos/modules/installer/virtualbox-demo.nix> 
    ./hardware-configuration.nix
    ./modules/bundle.nix
  ];

  # Let demo build as a trusted user.
# nix.settings.trusted-users = [ "demo" ];

# Mount a VirtualBox shared folder.
# This is configurable in the VirtualBox menu at
# Machine / Settings / Shared Folders.
# fileSystems."/mnt" = {
#   fsType = "vboxsf";
#   device = "nameofdevicetomount";
#   options = [ "rw" ];
# };

# GRUB
boot.loader.grub = {
  enable = true;
  version = 2;
  devices = [ "/dev/sda" ];
};

# Enable nix-flakes
nix.settings.experimental-features = [ "nix-command" "flakes" ];

# Enable unfree software
nixpkgs.config.allowUnfree = true;


# Enable zsh for all users
users.defaultUserShell = pkgs.zsh;
programs.zsh.enable = true;

# By default, the NixOS VirtualBox demo image includes SDDM and Plasma.
# If you prefer another desktop manager or display manager, you may want
# to disable the default.
services.xserver.desktopManager.plasma5.enable = lib.mkForce false;
services.displayManager.sddm.enable = lib.mkForce true;

# Enable GDM/GNOME by uncommenting above two lines and two lines below.
# services.xserver.displayManager.gdm.enable = true;
# services.xserver.desktopManager.gnome.enable = true;

services.displayManager = {
  autoLogin.user = null;
  autoLogin.enable = lib.mkForce false;
  # execCmd = "${pkgs.lightdm}/bin/lightdm";
};

services.xserver = {
  enable = true;
  windowManager.i3 = {
    enable = true;
    extraPackages = with pkgs; [
      dmenu i3status i3lock i3blocks
    ];
  };
};

programs.dconf.enable = true;

# Set your time zone.
time.timeZone = "Africa/Nairobi";

# Creating a user
# users.users.hart = {
#   isNormalUser = true;
#   initialPassword = "1234";
#   description = "Demo Hart";
#   extraGroups = [ "networkmanager" "wheel" ];
#   packages = with pkgs; [
#     alacritty
#     git
#     lf
#   ];
# };

# Creating a user via the module hart-user
hart-user.enable = true;
hart-user.userName = "hart";


# List packages installed in system profile. To search, run:
# \$ nix search wget
environment.systemPackages = with pkgs; [
   wget vim neovim btop tmux home-manager rofi
];

# Enable the OpenSSH daemon.
# services.openssh.enable = true;

}
