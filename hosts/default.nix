{
  self,
  inputs,
  homeImports,
  ...
}: {
  flake.nixosConfigurations = let
    inherit (inputs.nixpkgs.lib) nixosSystem;
    mod = "${self}/system/";

    inherit (import "${self}/system") desktop;

    specialArgs = {inherit inputs self;};
  in {
    vm = nixosSystem {
      inherit specialArgs;
      modules =
        desktop
        ++ [
          ./vm

          "${mod}/programs/optional/gamemode.nix"
          "${mod}/programs/optional/games.nix"
          "${mod}/programs/optional/libvirt.nix"

          {
            home-manager = {
              users.dandraghas.imports = homeImports."dandraghas@vm";
              extraSpecialArgs = specialArgs;
            };
          }
        ];
    };
  };
}