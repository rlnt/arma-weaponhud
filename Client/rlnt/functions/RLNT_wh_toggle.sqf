/*
File:			RLNT_wh_toggle.sqf
Author:			RLNT
Description:	toggle function for Weapon HUD
*/


/* DEBUG */
["function","WH","Toggle function"] call RLNT_wh_postDebug;


if (!rlnt_wh_doLoop) then {
	rlnt_wh_doLoop = true;
	[] spawn RLNT_wh_startSetup;

	["toggle",true] call RLNT_wh_notifyUser;
} else {
	rlnt_wh_doLoop = false;
	1300 cutRsc["DEFAULT", "PLAIN", 1];

	["toggle",false] call RLNT_wh_notifyUser;
};
