/*
File:			RLNT_wh_action.sqf
Author:			RLNT
Description:	action selection function for Weapon HUD
*/
private ["_item"];


/* DEBUG */
["function","WH","Action function"] call RLNT_wh_postDebug;


/* ERROR PREVENTION */
"action" call RLNT_wh_errorCheck;
if (rlnt_wh_errorsFound) exitWith {
	"error" call RLNT_wh_notifyUser;
};


/* VARIABLES */
_item = toLower(_this);


/* FIND ACTION */
switch (_item) do {
	case "itemantibiotic": {
		execVM "rlnt\addons\Weapon HUD\actions\antibiotic.sqf";
	};
	case "itembandage": {
		execVM "rlnt\addons\Weapon HUD\actions\bandage.sqf";
	};
	case "itembloodbag": {
		execVM "rlnt\addons\Weapon HUD\actions\bloodbag.sqf";
	};
	case "itemmorphine": {
		execVM "rlnt\addons\Weapon HUD\actions\morphine.sqf";
	};
	case "itempainkiller": {
		execVM "rlnt\addons\Weapon HUD\actions\painkiller.sqf";
	};
};
