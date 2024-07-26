{ config, lib, pkgs, ... }:

{
  #Allows experimental flakes and nix features
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  #Equivalent of /etc/environment
  environment.sessionVariables = {
    EDITOR = "nvim";
  };

  # Backup etc files instead of failing to activate generation if a file already exists in /etc
  environment.etcBackupExtension = ".bak";
}
