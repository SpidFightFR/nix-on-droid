{ config, pkgs, lib, ... }:
{
  environment.packages = with pkgs; [
  (pkgs.writeScriptBin "vi" ''exec nvim "$@"'')
  (pkgs.writeScriptBin "vim" ''exec nvim "$@"'')
  ];
}
