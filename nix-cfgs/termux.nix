{ config, lib, pkgs, ... }:

{
	android-integration.termux-setup-storage.enable = true;
	environment.motd = null;
}
