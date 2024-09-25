{
  systems = ["x86_64-linux"];

  perSystem = {pkgs, ...}: {
    packages = {
      kora-modified = pkgs.callPackage ./kora-modified {};
      macsequoia-kde = pkgs.callPackage ./macsequoia-kde {};
    };
  };
}
