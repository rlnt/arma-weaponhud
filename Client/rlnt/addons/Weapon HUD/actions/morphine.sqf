/*
File:			morphine.sqf
Author:			RLNT
Description:	morphine action for Weapon HUD
Credits:		DayZ Epoch Mod Team
*/
private ["_item","_hasItem"];


/*  DEBUG  */
["action","WH",name player,"is trying to inject morphine (Quick-Slot-Item)"] call RLNT_wh_postDebug;


/*  ERROR-PREVENTION  */
"morphine" call RLNT_wh_errorCheck;
if (rlnt_wh_errorsFound) exitWith {};


/*  VARIABLES  */
_item 		= "ItemMorphine";
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
	player setVariable["hit_legs",0];
	player setVariable["hit_hands",0];
	r_fracture_legs = false;
	r_fracture_arms = false;
	player setHit["legs",0];
	player setHit["handsd",0];
	player setVariable["hit_legs",0,true];
	player setVariable["hit_hands",0,true];
	PVDZ_send = [player,"Morphine",[player,player]];
	publicVariableServer "PVDZ_send";

	["action","WH",name player,"injected morphine (successful)"] call RLNT_wh_postDebug;
	["action","morphine",true] call RLNT_wh_notifyUser;

	dayz_actionInProgress = false;
} else {
	["action","WH",name player,"failed injecting morphine (no item left)"] call RLNT_wh_postDebug;
	["action","morphine",false] call RLNT_wh_notifyUser;
};
