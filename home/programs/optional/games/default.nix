{pkgs, ...}: {
  imports = [
    ./sober
  ];

  home.packages = with pkgs; [
    gamescope
    prismlauncher
    heroic
  ];
}
