{
  services = {
    xserver = {
      enable = true;
    };
    displayManager = {
      autoLogin = {
        enable = true;
        user = "dandraghas";
      };

      sddm = {
        enable = true;
      };
    };
  };
}