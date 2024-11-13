{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./bash.nix
    ./zsh.nix
    ./fish.nix
    ./xorg.nix
    ./git.nix
    ./gnome.nix
    ./mime.nix
    ./utils.nix
    ./icons.nix
    ./fonts.nix
    ./audio.nix
    ./lmms.nix
    ./documents.nix
    ./ocr.nix
    ./curseforge.nix
  ];

  programs.home-manager.enable = true;

  home.sessionPath = ["$HOME/.local/bin"];

  xdg = {
    mime.enable = true;
    mimeApps = {
      enable = true;
      defaultApplications = {
        # ~/.nix-profile/share/applications/mimeinfo.cache has a much more complete list
        # no need for an exhaustive list here, just some basics
        "text/html" = "google-chrome.desktop";
        "x-scheme-handler/http" = "google-chrome.desktop";
        "x-scheme-handler/https" = "google-chrome.desktop";
        "x-scheme-handler/about" = "google-chrome.desktop";
        "x-scheme-handler/unknown" = "google-chrome.desktop";
        "application/pdf" = ["org.pwmt.zathura-pdf-mupdf.desktop" "com.github.junrrein.PDFSlicer.desktop"];
        "application/http" = "google-chrome.desktop";
        "application/https" = "google-chrome.desktop";
        "application/octet-stream" = "nvim.desktop";
        "image/*" = "org.gnome.eog.desktop";
        "image/jpg" = "org.gnome.eog.desktop";
        "image/jpeg" = "org.gnome.eog.desktop";
        "image/png" = "org.gnome.eog.desktop";
        "image/svg+xml-compressed" = ["org.gnome.eog.desktop" "org.inkscape.Inkscape.desktop" "gimp.desktop"];
        "audio/*" = "vlc.desktop";
        "video/*" = "vlc.desktop";
      };
    };
  };

  # Add programs
  home.packages = with pkgs; [
    # terminals
    termite
    alacritty

    # editor
    inputs.neovim-flake.packages.x86_64-linux.maximal

    # web browser
    firefox
    google-chrome

    # apps
    unstable.vesktop
    obs-studio

    # vlc
    vlc
    libmicrodns

    # other media players
    mpv
    cmus
    spotify

    # gaming
    lutris
    piper
    prismlauncher
    xclicker

    # dev tools
    gnumake
    libclang
    ccls
    libgcc
    gdb
    gdbm
    cgdb
    scons
    cmakeWithGui
    cmake-format
    vulkan-tools
    sublime3

    # game dev
    unstable.godot_4
    blender

    # cad
    openscad

    #################### apps
    # graphics
    gimp-with-plugins
    gimpPlugins.gap
    gimpPlugins.fourier
    gimpPlugins.texturize
    inkscape
  ];
}
