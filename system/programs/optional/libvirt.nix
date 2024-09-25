{pkgs, ...}: {
  programs.virt-manager.enable = true;
  virtualisation.libvirtd.enable = true;

  virtualisation.libvirtd.qemu = {
    swtpm.enable = true;
    ovmf.packages = [pkgs.OVMFFull.fd];
  };

  virtualisation.spiceUSBRedirection.enable = true;
}
