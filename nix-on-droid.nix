{ config, lib, pkgs, ... }:

{
  imports = [
    #sub-config files
    ./nix-cfgs/nvim.nix
    ./nix-cfgs/env.nix
  ];

  # Simply install just the packages
  environment.packages = with pkgs; [
    # User-facing stuff that you really really want to have
    #vim # or some other editor, e.g. nano or neovim
    neovim
    # Some common stuff that people expect to have
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
    git
    ncurses
    openssh
    bash-completion
    fastfetch
  ];

  # Backup etc files instead of failing to activate generation if a file already exists in /etc
  environment.etcBackupExtension = ".bak";

  # Read the changelog before changing this value
  system.stateVersion = "24.05";

  # Set your time zone
  time.timeZone = "Europe/Paris";
}
