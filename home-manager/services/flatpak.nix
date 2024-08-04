{flake-inputs, ...}: {
  imports = [../../default.nix flake-inputs.flatpaks.homeManagerModules.nix-flatpak];

  services.flatpak = {
    enable = true;
    remotes = [
      {
        name = "flathub-beta";
        location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
      }
    ];
    packages = [
      "io.github.flattool.Warehouse"
    ];
  };
}
