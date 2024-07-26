{ config, lib, pkgs, ... }:

{
  imports = [
    #sub-config files
    ./nix-cfgs/nvim.nix
    ./nix-cfgs/env.nix
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

    #Custom list
    neovim
    git
    ncurses
    openssh
    bash-completion
    fastfetch
    wget
    curl
  ];

  # Read the changelog before changing this value
  system.stateVersion = "24.05";

  # Set your time zone
  time.timeZone = "Europe/Paris";
}
