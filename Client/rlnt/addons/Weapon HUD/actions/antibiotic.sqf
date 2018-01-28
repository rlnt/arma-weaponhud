/*
File:			antibiotic.sqf
Author:			Relentless
Description:	Quick-Item antibiotic for Weapon HUD
Credits:		DayZ Epoch Mod Team
*/
private ["_item","_hasItem"];


/*  DEBUG  */
["action","WH",name player,"is trying to take antibiotics (Quick-Slot-Item)"] call RLNT_wh_postDebug;


/*  ERROR-PREVENTION  */
"antibiotic" call RLNT_wh_errorCheck;
if (rlnt_wh_errorsFound) exitWith {};


/*  VARIABLES  */
_item 		= "ItemAntibiotic";
_hasItem 	= _item in magazines player;


/*  ACTION  */
if (_hasItem) then {
	dayz_actionInProgress = true;

	if (player == vehicle player) then {
		player playActionNow "Gear";
	} else {
		uiSleep 0.2;
	};

	player removeMagazine _item;
	call fnc_usec_medic_removeActions;
	r_action = false;
	r_player_infected = false;
	player setVariable["USEC_infected", false, true];

	["action","WH",name player,"took antibiotics (successful)"] call RLNT_wh_postDebug;
	["action","antibiotic",true] call RLNT_wh_notifyUser;

	dayz_actionInProgress = false;
} else {
	["action","WH",name player,"failed taking antibiotics (no item left)"] call RLNT_wh_postDebug;
	["action","antibiotic",false] call RLNT_wh_notifyUser;
};
