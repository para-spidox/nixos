
{ config, pkgs, ... }:

{
	environment.etc."nextcloud-admin-pass".text = "PWD"; # Just a placeholder. Not actually compromising myself :P
	services.nextcloud = {
		enable = true;
		hostName = "nextcloud.test.spidox.ie";
		config.adminpassFile = "/etc/nextcloud-admin-pass";
		config.dbtype = "sqlite";
		database.createLocally = true;
	};
}
