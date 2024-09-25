{
  inputs,
  pkgs,
  self,
  lib,
  ...
}: {
  imports = [
    inputs.disko.nixosModules.default
    (import ./disko.nix {device = "/dev/vda";})
    ./hardware-configuration.nix
  ];

  boot = {
    kernelPackages = lib.mkForce pkgs.linuxPackages_zen;
    loader.grub = {
      device = "nodev";
      efiSupport = true;
      efiInstallAsRemovable = true;
    };
  };

  networking.hostName = "vm";

  security.tpm2.enable = true;

  services = {
    fstrim.enable = true;
  };
}
