/*
Author:		RLNT
Filename:	RLNT_init.sqf
*/


diag_log "RLNT-Additions are starting up...";


execVM "scripts/RLNT/RLNT_compiles.sqf";
waitUntil {RLNT_compilesLoaded};


execVM "scripts/RLNT/scripts/Weapon HUD/RLNT_WH_init.sqf";
