{
  imports = [
    ./home-manager.nix
    ./xdg.nix
    ./distrobox.nix
    ./fonts.nix
    ./flatpak.nix
  ];

  programs = {
    dconf.enable = true;
  };
}