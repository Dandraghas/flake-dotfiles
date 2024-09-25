{
  inputs,
  lib,
  pkgs,
  config,
  self,
  ...
}: {
  gtk = {
    enable = true;

    #  gtk2.configLocation = "${config.xdg.configHome}/gtk-2.0/gtkrc";

    #iconTheme = {
    #  name = "kora";
    #  package = inputs.self.packages.${pkgs.system}.kora-modified;
    #  };
  };

  xdg.configFile."gtk-4.0/gtk.css".enable = lib.mkForce false;
}
