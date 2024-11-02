{lib, ...}: {
  imports = [
    ../../programs
    ../../programs/optional/games

    ../../services/gpg-agent.nix
  ];

  home.stateVersion = lib.mkForce "24.05";
}
