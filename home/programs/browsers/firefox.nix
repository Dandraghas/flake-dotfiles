
{
  config,
  pkgs,
  ...
}: {
  programs.firefox = {
    enable = true;
    profiles.dandraghas = {};
  };
}