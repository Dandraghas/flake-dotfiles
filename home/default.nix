{inputs, ...}: {
  imports = [
    ./terminal
    ./services
    ./flatpak
    ./editors/jetbrains.nix
    inputs.nix-index-db.hmModules.nix-index
    inputs.plasma-manager.homeManagerModules.plasma-manager
    inputs.nix-flatpak.homeManagerModules.default
  ];

  home = {
    username = "dandraghas";
    homeDirectory = "/home/dandraghas";
    stateVersion = "23.11";
    extraOutputsToInstall = ["doc" "devdoc"];
  };

  programs.home-manager.enable = true;
}
