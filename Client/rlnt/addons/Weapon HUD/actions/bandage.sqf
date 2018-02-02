/*
File:			bandage.sqf
Author:			RLNT
Description:	bandage action for Weapon HUD
Credits:		DayZ Epoch Mod Team
*/
private ["_item","_hasItem"];


/*  DEBUG  */
["action","WH",name player,"is trying to bandage (Quick-Item)"] call RLNT_wh_postDebug;


/*  ERROR-PREVENTION  */
"bandage" call RLNT_wh_errorCheck;
if (rlnt_wh_errorsFound) exitWith {};


/*  VARIABLES  */
_item 		= "ItemBandage";
_hasItem 	= _item in magazines player;


/*  ACTION  */
if (_hasItem) then {
	dayz_actionInProgress = true;

	if (player == vehicle player) then {
		player playActionNow "Medic";
	} else {
		uiSleep 0.5;
	};

	player removeMagazine _item;
	call fnc_usec_medic_removeActions;
	r_action = false;
	r_player_injured = false;
	r_player_handler = false;
	dayz_sourceBleeding = objNull;
	call fnc_usec_resetWoundPoints;

	if (r_player_blood == r_player_bloodTotal) then {
		player setVariable["USEC_lowBlood", false, true];
	};

	["action","bandage",true] call RLNT_wh_notifyUser;

	dayz_actionInProgress = false;
} else {
	["action","bandage",false] call RLNT_wh_notifyUser;
};
