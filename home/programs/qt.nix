{
  pkgs,
  inputs,
  ...
}: {
  qt = {
    enable = true;
    platformTheme.name = "kde";
  };

  programs.plasma = {
    enable = true;

    workspace = {
      iconTheme = "kora";
      colorScheme = "CatppuccinMochaBlue";
      theme = "MacSequoia-Dark";
      cursor.theme = "WhiteSur-cursors";
    };
  };

  home.packages = with pkgs; [
    (catppuccin-kde.override {
      flavour = ["mocha"];
      accents = ["blue"];
    })
    (inputs.self.packages.${pkgs.system}.macsequoia-kde.override {colorVariants = ["dark"];})
    inputs.self.packages.${pkgs.system}.kora-modified
    colloid-gtk-theme
    whitesur-cursors
  ];
}
