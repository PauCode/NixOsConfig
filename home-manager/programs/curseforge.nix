{config, ...}: {
  home.file."${config.home.homeDirectory}/.local/bin/curseforge-update" = {
    source = ../scripts/curseforge-update;
    executable = true;
  };
}
