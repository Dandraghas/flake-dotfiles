{
  inputs,
  lib,
  ...
}: {
  imports = [
    ./terminal
    ./services
    ./editors/jetbrains.nix
    inputs.nix-index-db.hmModules.nix-index
    inputs.plasma-manager.homeManagerModules.plasma-manager
    inputs.nix-flatpak.homeManagerModules.default
  ];

  home = {
    username = "dandraghas";
    homeDirectory = "/home/dandraghas";
    stateVersion = lib.mkDefault "24.05";
    extraOutputsToInstall = ["doc" "devdoc"];
  };

  programs.home-manager.enable = true;
}
