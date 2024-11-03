{
  imports = [
    # base config with pkgs and services
    ./modules/base.nix
    ./users/paulzstorm.nix

    # modules
    ./modules/pulseaudio.nix
    ./modules/bluetooth.nix
    ./modules/cups.nix
    ./modules/gaming.nix
    ./modules/appimage.nix

    # hardware
    ./hardware/machines/Thunder.nix
    ./hardware/nvidia.nix

    # graphics
    ./graphics/awesomewm.nix

    # services
    ./services/flatpak.nix
    ./services/transmission.nix
    ./services/gnome-settings.nix
  ];

  networking.hostName = "Thunder";

  services.transmission.home = "/bigboy/Torrents";
}
