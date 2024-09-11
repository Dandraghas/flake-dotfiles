{
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    ./sober
  ];
  
  home.packages = with pkgs; [
    gamescope
    prismlauncher
    heroic
  ];
}