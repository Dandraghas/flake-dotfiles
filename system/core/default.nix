{lib, ...}: {
  imports = [
    ./security.nix
    ./users.nix
    ../nix
    ../programs/zsh.nix
  ];

  documentation.dev.enable = true;

  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [
      "en_US.UTF-8/UTF-8"
      "ru_RU.UTF-8/UTF-8"
      "uk_UA.UTF-8/UTF-8"
      "ja_JP.UTF-8/UTF-8"
    ];
  };

  system.stateVersion = lib.mkDefault "24.05";

  time.timeZone = lib.mkDefault "Europe/Bucharest";

  zramSwap.enable = true;
}
