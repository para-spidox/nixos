{ config, pkgs, ... }:

{
	environment.etc."paperless-admin-pass".text = "admin"; # placeholder
	services.paperless = {
		enable = true;
		passwordFile = "/etc/paperless-admin-pass";
		# settings = {
		# 	PAPERLESS_URL = "http://192.168.124.137:28981";
		# };
	};
  	networking.firewall.allowedTCPPorts = [ 28981 ];
  	networking.firewall.allowedUDPPorts = [ 28981 ];
}
