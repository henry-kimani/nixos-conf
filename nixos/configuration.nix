{ config, pkgs, lib, ... }:

{
  imports = [ 
    ./hardware-configuration.nix
    ./modules/bundle.nix
  ];

# GRUB
boot.loader = {
  systemd-boot.enable = true;
  efi.canTouchEfiVariables = true;
};

# Enable Networking
networking.networkmanager.enable = true;
networking.hostName = "nixos";
# networking.wireless.enable = true; # Enables wirelss support via wpa_supplicant
# Configre proxy
# networking.proxy.default = "http://user:password@proxy:port/";
# networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

# Enable nix experimental features
nix.settings.experimental-features = [ "nix-command" "flakes" ];

nixpkgs.config.allowUnfree = true;

# Enable zsh for all users
users.defaultUserShell = pkgs.zsh;
programs.zsh.enable = true;

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

# Creating the user henry
henry-user.enable = true;
henry-user.userName = "henry";

# Enabling podman module
podman.enable = true;

# List packages installed in system profile. To search, run:
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
