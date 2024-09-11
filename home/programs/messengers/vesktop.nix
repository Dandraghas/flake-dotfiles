{
  services.flatpak.packages = [
    "flathub:app/dev.vencord.Vesktop//stable"
  ];
  services.flatpak.overrides = {
    "global" = {
      filesystems = [
        "xdg-run/.flatpak/dev.vencord.Vesktop:create"
        "xdg-run/discord-ipc-0"
      ];
    };
  };
  # https://github.com/flathub/dev.vencord.Vesktop?tab=readme-ov-file#native-applications
  systemd.user.tmpfiles.rules = [
    "L %t/discord-ipc-0 - - - - .flatpak/dev.vencord.Vesktop/xdg-run/discord-ipc-0"
  ];
}