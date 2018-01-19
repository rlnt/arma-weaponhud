/*
File:			bloodbag.sqf
Author:			Relentless
Description:	Quick-Item bloodbag for Weapon HUD
Credits:		DayZ Epoch Mod Team
*/
private ["_item","_hasItem","_timer","_infection","_i","_animation","_medic","_blood"];


/*  DEBUG  */
["action","WH",name player,"is trying to self blood bag (Quick-Item)"] call RLNT_wh_postDebug;


/*  ERROR-PREVENTION  */
"bloodbag" call RLNT_wh_errorCheck;
if (rlnt_wh_errorsFound) exitWith {};


/*  VARIABLES  */
_item		= "ItemBloodbag";
_hasItem 	= _item in magazines player;
_timer 		= diag_tickTime;
_infection 	= false;
_i 			= 0;
r_interrupt = false;
r_doLoop 	= false;

if (DZE_selfTransfuse_Values select 1 <= 0) then {
	_infection = false;
} else {
	if ((random 100) < (DZE_selfTransfuse_Values select 1)) then {
		_infection = true;
	};
};


/*  ACTION  */
if (_hasItem) then {
	dayz_actionInProgress = true;

	if (player == vehicle player) then {
		player playActionNow "Medic";
	};

	call fnc_usec_medic_removeActions;
	r_action = false;

	_animation 	= animationState player;
	_medic 		= ["medic", _animation] call fnc_inString;

	player removeMagazine _item;

	while {r_doLoop && (_i < (rlnt_wh_bloodSettings select 0))} do {

		if ((diag_tickTime - _timer) >= 1) then {
			_i = _i + 1;
			_timer = diag_tickTime;
			r_player_blood = (r_player_blood + ((rlnt_wh_bloodSettings select 1) / (rlnt_wh_bloodSettings select 0))) min r_player_bloodTotal;
		};

		if (player == vehicle player) then {
			if (!_medic) then {
				player playActionNow "Medic";
			};
		} else {
			uiSleep (rlnt_wh_bloodSettings select 0);
		};

		_blood = player getVariable["USEC_BloodQty", 0];

		if ((_blood >= r_player_bloodTotal) || (_i == rlnt_wh_bloodSettings select 0)) then {
			dayz_lastSelfTransfuse = time;
			r_doLoop = false;

			["bloodbag",true,false] call RLNT_wh_notifyUser;

			if (_infection) then {
				r_player_infected = true;
				player setVariable["USEC_infected", true ,true];
			};
		};

		if (r_interrupt) then {
			r_doLoop = false;
			["bandage",false,true] call RLNT_wh_notifyUser;
		};
		uiSleep 0.1;
	};
	dayz_actionInProgress = false;
} else {
	["bandage",false,false] call RLNT_wh_notifyUser;
};

r_doLoop = false;

if (r_interrupt) then {
	r_interrupt = false;

	if (player == vehicle player) then {
		player switchMove "";
		player playActionNow "stop";
	};
};
