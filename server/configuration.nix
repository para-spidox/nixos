{ config, pkgs, ... }:

{
	imports =
	[
		./minecraft.nix
		./nextcloud.nix
	];
	security.acme = {
		acceptTerms = true;
		defaults.email = "";
	};
	services = {
		jellyfin = {
			enable = true;
			openFirewall = true;
		};
		nginx = {
			enable = true;
			virtualHosts = {
				"test.spidox.ie" = {
					#addSSL = true;
					#enableACME = true;
					root = "/var/www/test.spidox.ie";
				};
			};
		};
	};
  	# Open ports in the firewall.
  	networking.firewall.allowedTCPPorts = [ 80 443 ];
  	networking.firewall.allowedUDPPorts = [ 80 443 ];
  	# Or disable the firewall altogether.
  	# networking.firewall.enable = false;

}

