/*
File:			painkiller.sqf
Author:			Relentless
Description:	Quick-Item painkiller for Weapon HUD
Credits:		DayZ Epoch Mod Team
*/
private ["_item","_hasItem"];


/*  DEBUG  */
["action","WH",name player,"is trying to take painkillers (Quick-Slot-Item)"] call RLNT_wh_postDebug;


/*  ERROR-PREVENTION  */
"painkiller" call RLNT_wh_errorCheck;
if (rlnt_wh_errorsFound) exitWith {};


/*  VARIABLES  */
_item 		= "ItemPainkiller";
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
	player setVariable["USEC_inPain",false,true];
	r_player_inpain = false;
	PVDZ_send = [player,"Painkiller",[player,player]];
	publicVariableServer "PVDZ_send";

	["action","WH",name player,"took painkillers (successful)"] call RLNT_wh_postDebug;
	["action","painkiller",true] call RLNT_wh_notifyUser;

	dayz_actionInProgress = false;
} else {
	["action","WH",name player,"failed taking painkillers (no item left)"] call RLNT_wh_postDebug;
	["action","painkiller",false] call RLNT_wh_notifyUser;
};
