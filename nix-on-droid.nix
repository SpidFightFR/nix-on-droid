{ config, lib, pkgs, ... }:

{
  imports = [
    #sub-config files
    ./nix-cfgs/nix.nix
    ./nix-cfgs/env.nix
    ./nix-cfgs/termux.nix
  ];

  # Simply install just the packages
  environment.packages = with pkgs; [
    procps
    killall
    diffutils
    findutils
    utillinux
    tzdata
    hostname
    man
    gnugrep
    gnupg
    gnused
    gnutar
    bzip2
    gzip
    xz
    zip
    unzip
    iproute2
    which

    #Home-manager package
    home-manager
  ];

  # Read the changelog before changing this value
  system.stateVersion = "24.05";

  # Set your time zone
  time.timeZone = "Europe/Paris";


  ### HOME MANAGER PART
  # Configure home-manager
    home-manager = {
      backupFileExtension = "hm-bak";
      useGlobalPkgs = true;

      config =
        { config, lib, pkgs, ... }:
        {
          # Read the changelog before changing this value
          home.stateVersion = "24.05";

          # insert home-manager config
          imports = [
          ./home-cfgs/bash.nix
          ./home-cfgs/home-mgr.nix
          ./home-cfgs/user-pkgs.nix
          ./home-cfgs/pentest.nix
          ./home-cfgs/nvim.nix
          ];

        };
    };
}
