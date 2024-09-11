{ lib, ... }: {
  #services.flatpak.enable = true;

  services.flatpak.remotes = {
    "flathub" = "https://flathub.org/repo/flathub.flatpakrepo";
    "flathub-beta" = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
  };
}