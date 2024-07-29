{ config, lib, pkgs, ... }:

{
  imports = [
    #sub-config files
    ./nix-cfgs/nvim.nix
    ./nix-cfgs/nix.nix
    ./nix-cfgs/env.nix
    ./nix-cfgs/termux.nix
    ./nix-cfgs/pentest.nix
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

    #Custom list
    neovim
    git
    ncurses
    openssh
    bash-completion
    fastfetch
    wget
    curl
    ffmpeg
    yt-dlp
    htop
  ];

  # Read the changelog before changing this value
  system.stateVersion = "24.05";

  # Set your time zone
  time.timeZone = "Europe/Paris";
}
