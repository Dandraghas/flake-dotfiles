let
  desktop = [
    ./core/boot.nix
    ./core/default.nix

    ./hardware/graphics.nix
    ./hardware/bluetooth.nix # TODO: Bloat

    ./network

    ./programs

    ./services
    ./services/sddm.nix
    ./services/plasma.nix
    ./services/pipewire.nix
    ./services/podman.nix
  ];
in {
  inherit desktop;
}
