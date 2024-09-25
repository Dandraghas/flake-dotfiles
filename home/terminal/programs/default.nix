{pkgs, ...}: {
  imports = [
    ./git.nix
    ./gpg.nix
    ./fastfetch.nix
    ./zoxide.nix
    ./eza.nix
  ];

  home.packages = with pkgs; [
    tgpt
  ];
}
