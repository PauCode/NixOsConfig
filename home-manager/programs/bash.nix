{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      l = "eza";
      ll = "eza -alh";
      norse = "sudo nixos-rebuild switch --flake /etc/nixos#THUNDER";
      horse = "home-manager switch --flake /etc/nixos#paulzstorm@THUNDER";
      "mm-setup" = "xrandr --output HDMI-0 --mode 1920x1080 --pos 0x0 --output DP-4 --mode 1920x1080 --pos 1920x0 --output DP-2 --mode 1920x1080 --pos 3840x0";
    };
  };
}
