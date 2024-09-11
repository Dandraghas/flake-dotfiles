{
  pkgs,
  ...
}: {
  systemd.user.services.autolock = {
    Unit = {
      Description = "Hack to automatically lock the screen.";
      After = [ "graphical-session.target" ];
    };
    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
    Service = {
      ExecStart = "${pkgs.writeShellScript "autolock" ''
        #!/run/current-system/sw/bin/bash
        ${pkgs.systemd}/bin/loginctl lock-session
      ''}";
    };
  };
}
