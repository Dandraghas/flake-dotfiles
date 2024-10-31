{
  pkgs,
  inputs,
  ...
}: {
  programs.plasma = {
    enable = true;

    workspace = {
      iconTheme = "kora";
      colorScheme = "CatppuccinMochaBlue";
      theme = "MacSequoia-Dark";
      cursor.theme = "WhiteSur-cursors";
    };

    configFile = {
      kdeglobals."KDE"."widgetStyle" = "Vinyl"; # I did not find an option in plasma-manager. TODO: is this correct way to do this?
    };

    panels = [
      {
        location = "top";
        floating = true;
        height = 32;

        widgets = [
          {
            name = "org.kde.plasma.kickoff";
            config = {
              General = {
                icon = "nix-snowflake-white";
                alphaSort = true;
              };
            };
          }
          {
            name = "org.kde.plasma.icontasks";
            config = {
              General = {
                launchers = [
                  "applications:firefox.desktop"
                  "applications:dev.vencord.Vesktop.desktop"
                  "applications:org.kde.dolphin.desktop"
                  "applications:org.kde.konsole.desktop"
                ];
              };
            };
          }

          "org.kde.plasma.marginsseparator"

          {
            systemTray.items = {
              hidden = [
                "org.kde.plasma.clipboard"
              ];
            };
          }

          {
            digitalClock = {
              time.format = "24h";
              date = {
                position = "besideTime";
                format = {
                  custom = "ddd MMM dd";
                };
              };
            };
          }
        ];
      }
    ];
  };

  home.packages = with pkgs; [
    (catppuccin-kde.override {
      flavour = ["mocha"];
      accents = ["blue"];
    })
    (inputs.self.packages.${pkgs.system}.macsequoia-kde.override {colorVariants = ["dark"];})
    inputs.self.packages.${pkgs.system}.kora-modified
    inputs.self.packages.${pkgs.system}.vinyl-theme
    colloid-gtk-theme
    whitesur-cursors
  ];
}
