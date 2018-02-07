/*
File:			RLNT_wh_error.sqf
Author:			Relentless
Description:	error prevention function for Weapon HUD
*/
private ["_notMatchItem"];


/* DEBUG */
["function","WH","Error function"] call RLNT_wh_postDebug;


/* CHECK ERRORS */
switch (_this) do {

	case "setup": {

		if !((isNil "rlnt_wh_item1_key") && (isNil "rlnt_wh_item2_key")) then {
			if (str(rlnt_wh_item1_key select 0) == str(rlnt_wh_item2_key select 0)) exitWith {
				rlnt_wh_errorsFound = true;
				["error","WH", localize "STR_RLNT_WH_SAME_HOTKEY_1"] call RLNT_wh_postDebug;
				["error","WH", localize "STR_RLNT_WH_SAME_HOTKEY_2"] call RLNT_wh_postDebug;
			};
		};

		if !((isNil "rlnt_wh_item1") && (isNil "rlnt_wh_item2")) then {
			if ((toLower rlnt_wh_item1) == (toLower rlnt_wh_item2)) exitWith {
				rlnt_wh_errorsFound = true;
				["error","WH", localize "STR_RLNT_WH_SAME_ITEM_1"] call RLNT_wh_postDebug;
				["error","WH", localize "STR_RLNT_WH_SAME_ITEM_2"] call RLNT_wh_postDebug;
			};
		};

		if !(isNil "rlnt_wh_item1") then {
			if (!dayz_classicBloodBagSystem && (toLower rlnt_wh_item1 == "itembloodbag")) exitWith {
				rlnt_wh_errorsFound = true;
				["error","WH", localize "STR_RLNT_WH_BLOODBAGSYSTEM_1"] call RLNT_wh_postDebug;
				["error","WH", localize "STR_RLNT_WH_BLOODBAGSYSTEM_2"] call RLNT_wh_postDebug;
			};

			_notMatchItem = 0;
			{
				if ((toLower rlnt_wh_item1) != (toLower _x)) then {
					_notMatchItem = _notMatchItem + 1;
				}
			} forEach rlnt_wh_itemList;

			if (_notMatchItem == (count rlnt_wh_itemList)) exitWith {
				rlnt_wh_errorsFound = true;
				["error","WH", localize format["STR_RLNT_WH_UNSUPPORTED_ITEM_1", "1"]] call RLNT_wh_postDebug;
				["error","WH", localize "STR_RLNT_WH_UNSUPPORTED_ITEM_2"] call RLNT_wh_postDebug;
			};
		};

		if !(isNil "rlnt_wh_item2") then {
			if (!dayz_classicBloodBagSystem && (toLower rlnt_wh_item2 == "itembloodbag")) exitWith {
				rlnt_wh_errorsFound = true;
				["error","WH", localize "STR_RLNT_WH_BLOODBAGSYSTEM_1"] call RLNT_wh_postDebug;
				["error","WH", localize "STR_RLNT_WH_BLOODBAGSYSTEM_2"] call RLNT_wh_postDebug;
			};

			_notMatchItem = 0;
			{
				if ((toLower rlnt_wh_item2) != (toLower _x)) then {
					_notMatchItem = _notMatchItem + 1;
				}
			} forEach rlnt_wh_itemList;

			if (_notMatchItem == (count rlnt_wh_itemList)) exitWith {
				rlnt_wh_errorsFound = true;
				["error","WH", localize format["STR_RLNT_WH_UNSUPPORTED_ITEM_1", "2"]] call RLNT_wh_postDebug;
				["error","WH", localize "STR_RLNT_WH_UNSUPPORTED_ITEM_2"] call RLNT_wh_postDebug;
			};

			if (isNil "rlnt_wh_item1") then {
				rlnt_wh_item1 = rlnt_wh_item2;
				rlnt_wh_item2 = nil;
				["fix","WH", localize "STR_RLNT_WH_SWITCH_ITEMS_1"] call RLNT_wh_postDebug;
				["fix","WH", localize "STR_RLNT_WH_SWITCH_ITEMS_2"] call RLNT_wh_postDebug;
			};
		};

		if ((isNil "rlnt_wh_doLoop") || !rlnt_wh_doLoop) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize format["STR_RLNT_WH_FUNCTION_WITHOUT_LOOP_1","Setup"]] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_FUNCTION_WITHOUT_LOOP_2"] call RLNT_wh_postDebug;
		};

		if ((rlnt_wh_nfcStyle == 1) && (isNil "rlnt_up_installed")) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize "STR_RLNT_WH_NFC1_WITHOUT_UPDATEPANEL_1"] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_NFC1_WITHOUT_UPDATEPANEL_2"] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 0 < 2) then {
			rlnt_wh_bloodSettings set[0, 2];
			["fix","WH", localize "STR_RLNT_WH_BLOOD_DURATION_LOW_1"] call RLNT_wh_postDebug;
			["fix","WH", localize "STR_RLNT_WH_BLOOD_DURATION_LOW_2"] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 0 > 120) then {
			rlnt_wh_bloodSettings set[0, 120];
			["fix","WH", localize "STR_RLNT_WH_BLOOD_DURATION_HIGH_1"] call RLNT_wh_postDebug;
			["fix","WH", localize "STR_RLNT_WH_BLOOD_DURATION_HIGH_2"] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 1 < 500) then {
			rlnt_wh_bloodSettings set[1, 500];
			["fix","WH", localize "STR_RLNT_WH_BLOOD_AMOUNT_LOW_1"] call RLNT_wh_postDebug;
			["fix","WH", localize "STR_RLNT_WH_BLOOD_AMOUNT_LOW_2"] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 1 > 12000) then {
			rlnt_wh_bloodSettings set[1, 12000];
			["fix","WH", localize "STR_RLNT_WH_BLOOD_AMOUNT_HIGH_1"] call RLNT_wh_postDebug;
			["fix","WH", localize "STR_RLNT_WH_BLOOD_AMOUNT_HIGH_2"] call RLNT_wh_postDebug;
		};
	};

	case "update": {
		if !(rlnt_wh_doLoop) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize format["STR_RLNT_WH_FUNCTION_WITHOUT_LOOP_1","Update"]] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_FUNCTION_WITHOUT_LOOP_2"] call RLNT_wh_postDebug;
		};
	};

	case "action": {
		if !(rlnt_wh_doLoop) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize format["STR_RLNT_WH_FUNCTION_WITHOUT_LOOP_1","Action"]] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_FUNCTION_WITHOUT_LOOP_2"] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_itemAmount == 0) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH", localize "STR_RLNT_WH_ACTION_WITHOUT_ITEMS_1"] call RLNT_wh_postDebug;
			["error","WH", localize "STR_RLNT_WH_ACTION_WITHOUT_ITEMS_2"] call RLNT_wh_postDebug;
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


/* UPDATE */
rlnt_wh_errorsFound = false;
