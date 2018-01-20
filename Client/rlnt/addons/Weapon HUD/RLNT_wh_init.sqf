/*
File:			RLNT_wh_init.sqf
Author:			Relentless
Description:	Init file for Weapon HUD
*/

if (!isDedicated && hasInterface) then {
	call compile preprocessFileLineNumbers "rlnt\addons\Weapon HUD\RLNT_wh_config.sqf";		//Config
	[] spawn RLNT_wh_startSetup;															//Setup
};


/*  DEBUG  */
["file","WH","Weapon HUD Init"] call RLNT_postDebug;
