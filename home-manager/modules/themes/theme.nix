{ config, pkgs, ... }:
{
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
        size = 18;
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
        "https://github.com/ful1e5/fuchsia-cursor/releases/download/v2.0.1/Fuchsia-Amber.tar.xz"
        "sha256-EtUxqAtMqvfQwrlA90Qcm8ffThD1OAmOSeFECF1uwrE"
        "Fuchsia-Amber";
}
