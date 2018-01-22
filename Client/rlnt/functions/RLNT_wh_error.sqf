/*
File:			RLNT_wh_error.sqf
Author:			Relentless
Description:	Error prevention function for Weapon HUD
*/
private ["_notMatchItem"];


/*  DEBUG  */
["function","WH","Error function"] call RLNT_wh_postDebug;


/*  CHECK ERRORS  */
switch (_this) do {

	case "setup": {
		if !(rlnt_wh_doLoop) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize "STR_RLNT_WH_INSTALLATION"] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_INSTALLATION_HINT"] call RLNT_wh_postDebug;
		};

		if ((rlnt_wh_nfcStyle == 1) && (isNil "rlnt_up_initLoaded")) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize "STR_RLNT_WH_NO_UPDATE_PANEL"] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_NO_UPDATE_PANEL_HINT"] call RLNT_wh_postDebug;
		};

		if ((toLower rlnt_wh_item1) == (toLower rlnt_wh_item2)) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize "STR_RLNT_WH_SAME_ITEM"] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_SAME_ITEM_HINT"] call RLNT_wh_postDebug;
		};

		if (str(rlnt_wh_item1_key select 0) == str(rlnt_wh_item2_key select 0)) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize "STR_RLNT_WH_SAME_HOTKEY"] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_SAME_HOTKEY_HINT"] call RLNT_wh_postDebug;
		};

		if (!dayz_classicBloodBagSystem && ((toLower rlnt_wh_item1 == "itembloodbag") || (toLower rlnt_wh_item2 == "itembloodbag"))) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize "STR_RLNT_WH_BLOODBAGSYSTEM"] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_BLOODBAGSYSTEM_HINT"] call RLNT_wh_postDebug;
		};

		if (!isNil "rlnt_wh_item1") then {
			_notMatchItem = 0;
			{
				if ((toLower rlnt_wh_item1) != (toLower _x)) then {
					_notMatchItem = _notMatchItem + 1;
				}
			} forEach rlnt_wh_itemList;

			if (_notMatchItem == (count rlnt_wh_itemList)) exitWith {
				rlnt_wh_errorsFound = true;
				["error","WH", localize format["STR_RLNT_WH_ITEM_NOT_FOUND", "1"]] call RLNT_wh_postDebug;
				["error","WH", localize "STR_RLNT_WH_ITEM_NOT_FOUND_HINT"] call RLNT_wh_postDebug;
			};
		};

		if (!isNil "rlnt_wh_item2") then {
			_notMatchItem = 0;
			{
				if ((toLower rlnt_wh_item2) != (toLower _x)) then {
					_notMatchItem = _notMatchItem + 1;
				}
			} forEach rlnt_wh_itemList;

			if (_notMatchItem == (count rlnt_wh_itemList)) exitWith {
				rlnt_wh_errorsFound = true;
				["error","WH", localize format["STR_RLNT_WH_ITEM_NOT_FOUND", "2"]] call RLNT_wh_postDebug;
				["error","WH", localize "STR_RLNT_WH_ITEM_NOT_FOUND_HINT"] call RLNT_wh_postDebug;
			};
		};

		if ((isNil "rlnt_wh_item1") && !(isNil "rlnt_wh_item2")) then {
			rlnt_wh_item1 = rlnt_wh_item2;
			rlnt_wh_item2 = nil;
			["fix","WH", localize "STR_RLNT_WH_ITEM_SWITCH"] call RLNT_wh_postDebug;
			["fix","WH", localize "STR_RLNT_WH_ITEM_SWITCH_HINT"] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 0 < 2) then {
			rlnt_wh_bloodSettings set[0, 2];
			["fix","WH", localize "STR_RLNT_WH_BLOOD_INJECTION_DURATION_LOW"] call RLNT_wh_postDebug;
			["fix","WH", localize "STR_RLNT_WH_BLOOD_INJECTION_DURATION_LOW_HINT"] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 0 > 120) then {
			rlnt_wh_bloodSettings set[0, 120];
			["fix","WH", localize "STR_RLNT_WH_BLOOD_INJECTION_DURATION_HIGH"] call RLNT_wh_postDebug;
			["fix","WH", localize "STR_RLNT_WH_BLOOD_INJECTION_DURATION_HIGH_HINT"] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 1 < 500) then {
			rlnt_wh_bloodSettings set[1, 500];
			["fix","WH", localize "STR_RLNT_WH_BLOOD_INJECTION_AMOUNT_LOW"] call RLNT_wh_postDebug;
			["fix","WH", localize "STR_RLNT_WH_BLOOD_INJECTION_AMOUNT_LOW_HINT"] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 1 > 12000) then {
			rlnt_wh_bloodSettings set[1, 12000];
			["fix","WH", localize "STR_RLNT_WH_BLOOD_INJECTION_AMOUNT_HIGH"] call RLNT_wh_postDebug;
			["fix","WH", localize "STR_RLNT_WH_BLOOD_INJECTION_AMOUNT_HIGH_HINT"] call RLNT_wh_postDebug;
		};
	};

	case "update": {
		if !(rlnt_wh_doLoop) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize "STR_RLNT_WH_UPDATE"] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_UPDATE_HINT"] call RLNT_wh_postDebug;
		};
	};

	case "action": {
		if !(rlnt_wh_doLoop) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize "STR_RLNT_WH_INSTALLATION"] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_INSTALLATION_HINT"] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_itemAmount == 0) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize "STR_RLNT_WH_ACTION"] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_ACTION_HINT"] call RLNT_wh_postDebug;
		};
	};

	case "antibiotic": {
		if (dayz_actionInProgress) exitWith {
			rlnt_wh_errorsFound = true;
			["action",false] call RLNT_wh_notifyUser;
		};
	};

	case "bandage": {
		if (dayz_actionInProgress) exitWith {
			rlnt_wh_errorsFound = true;
			["action",false] call RLNT_wh_notifyUser;
		};
	};

	case "bloodbag": {
		if (dayz_actionInProgress) exitWith {
			rlnt_wh_errorsFound = true;
			["action",false] call RLNT_wh_notifyUser;
		};

		if (time - dayz_lastSelfTransfusion <= DZE_selfTransfuse_Values select 2) exitWith {
			rlnt_wh_errorsFound = true;
			["action",false] call RLNT_wh_notifyUser;
		};
	};

	case "morphine": {
		if (dayz_actionInProgress) exitWith {
			rlnt_wh_errorsFound = true;
			["action",false] call RLNT_wh_notifyUser;
		};
	};

	case "painkiller": {
		if (dayz_actionInProgress) exitWith {
			rlnt_wh_errorsFound = true;
			["action",false] call RLNT_wh_notifyUser;
		};
	};
};


/*  UPDATE  */
rlnt_wh_errorsFound = false;
