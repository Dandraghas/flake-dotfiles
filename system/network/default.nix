# networking configuration
{
  networking = {
    nameservers = ["1.1.1.1"];

    networkmanager = {
      enable = true;
      dns = "systemd-resolved";
      wifi.powersave = true;
    };
  };

  services = {
    resolved = {
      enable = true;
      dnsovertls = "opportunistic";
    };
  };
}