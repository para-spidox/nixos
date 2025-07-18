{ config, pkgs, ... }:

{
	services.onlyoffice = {
		enable = true;
		hostname = "onlyoffice.test.spidox.ie";
	};
}

