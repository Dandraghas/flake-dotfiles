{config, ...}: let
  data = config.xdg.dataHome;
  conf = config.xdg.configHome;
  cache = config.xdg.cacheHome;
in {
  imports = [
    ./programs
    ./shell/zsh.nix
  ];

  # add environment variables
  home.sessionVariables = {
    NIX_AUTO_RUN = "1";
  };
}
