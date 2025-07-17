{ config, pkgs, ... }:

{
	imports =
	[
		./server/minecraft.nix
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
			#		#addSSL = true;
			#		#enableACME = true;
					root = "/var/www/test.spidox.ie";
				};
			};
		};
	};
}

