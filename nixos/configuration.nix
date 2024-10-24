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
  devices = [ "/dev/sda" ];
};

# Enable nix-flakes
nix.settings.experimental-features = [ "nix-command" "flakes" ];

# Enable unfree software
nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
   "microsoft-edge" "vscode"
];


# Enable zsh for all users
users.defaultUserShell = pkgs.zsh;
programs.zsh.enable = true;

# By default, the NixOS VirtualBox demo image includes SDDM and Plasma.
# If you prefer another desktop manager or display manager, you may want
# to disable the default.

# Enable GDM/GNOME by uncommenting above two lines and two lines below.
# services.xserver.displayManager.gdm.enable = true;
# services.xserver.desktopManager.gnome.enable = true;

# Enabling sddm together with its theme
sddm.enable = true;

# Enabling x server
x.enable = true;

programs.dconf.enable = true;

# Set your time zone.
time.timeZone = "Africa/Nairobi";

# Creating a user via the module hart-user
hart-user.enable = true;
hart-user.userName = "hart";

# List packages installed in system profile. To search, run:
# \$ nix search wget
environment.systemPackages = with pkgs; [
   wget vim neovim btop tmux home-manager rofi
  # sddm theme dependencies
  libsForQt5.qt5.qtquickcontrols2
  libsForQt5.qt5.qtgraphicaleffects
];

# Enable the OpenSSH daemon.
# services.openssh.enable = true;

system.stateVersion = "24.05";

}
