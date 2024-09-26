{pkgs, ...}: {
  hardware.bluetooth = {
    enable = true;
    package = pkgs.bluez5-experimental;
    settings = {
      General = {
        FastConnectable = true;
        JustWorksRepairing = "always";
        Privacy = "device";
        Experimental = true;
      };
    };
  };
}
