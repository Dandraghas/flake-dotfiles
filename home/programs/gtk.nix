{lib}: {
  gtk = {
    enable = true;
  };

  xdg.configFile."gtk-4.0/gtk.css".enable = lib.mkForce false;
}
