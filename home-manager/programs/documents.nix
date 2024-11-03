{pkgs, ...}: {
  home.packages = with pkgs; [
    libreoffice
    zathura
    pdfslicer
  ];
}
