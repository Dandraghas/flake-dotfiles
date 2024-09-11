{pkgs, ...}: {
  programs = {
    gamescope = {
      enable = true;
      capSysNice = true;
      args = [
        "--expose-wayland"
      ];
    };

    # https://github.com/nix-community/home-manager/issues/4314
    steam = {
      enable = true;

      extraCompatPackages = [
        pkgs.proton-ge-bin
      ];

      gamescopeSession.enable = true;
    };
  };
}
