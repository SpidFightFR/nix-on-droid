{ config, lib, pkgs, ... }:
{
    home.packages = with pkgs; [
    git
    ncurses
    openssh
    fastfetch
    wget
    curl
    ffmpeg
    yt-dlp
    htop
    tree
    python3
    inetutils
    ];
}
