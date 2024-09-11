{
  config,
  pkgs,
  ...
}: let
  cfg = config.programs.git;
in {
  home.packages = [pkgs.gh];

  programs.git = {
    enable = true;

    userEmail = "dandraghas@gmail.com";
    userName = "Dandraghas";

    signing = {
      key = null; # Guess itself
      signByDefault = true;
    };
  };
}
