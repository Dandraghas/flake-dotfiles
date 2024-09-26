{pkgs, ...}: {
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
