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
}
