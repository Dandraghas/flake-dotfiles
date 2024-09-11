{
  pkgs,
  ...
}: {
  hardware.bluetooth = {
    enable = true;
    package = pkgs.bluez5-experimental;
    settings = {
      General = {
        FastConnectable = true; # Consumes more power, but who cares?
        JustWorksRepairing = "always";
        Privacy = "device";
        Experimental = true;
      };
    };
  };
}