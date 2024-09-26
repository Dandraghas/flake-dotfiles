{...}: {
  imports = [
    ./programs
    ./shell/zsh.nix
  ];

  # add environment variables
  home.sessionVariables = {
    NIX_AUTO_RUN = "1";
  };
}
