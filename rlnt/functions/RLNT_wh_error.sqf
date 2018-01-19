/*
File:			RLNT_wh_error.sqf
Author:			Relentless
Description:	Error prevention function for Weapon HUD
*/


/*  DEBUG  */
["function","WH","Error Check"] call RLNT_wh_postDebug;


/*  CHECK ERRORS  */
switch (_this) do {

	case "setup": {
		if !(rlnt_wh_doLoop) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH","Something seems to be wrong with your Weapon HUD installation!"] call RLNT_wh_postDebug;
			["error","WH","It's recommended to check the installation or reinstall the whole script."] call RLNT_wh_postDebug;
		};

		if ((rlnt_wh_nfcStyle == 1) && (isNil "rlnt_up_initLoaded")) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH","Detected that notification style 1 is selected but Update Panel is not installed!"] call RLNT_wh_postDebug;
			["error","WH","In order to use nfcStyle 1, you have to install the RLNT Update Panel."] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_item1 == rlnt_wh_item2) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH","Detected that item 1 and 2 are equal!"] call RLNT_wh_postDebug;
			["error","WH","You either have to delete the second item or use another one."] call RLNT_wh_postDebug;
		};

		if (str(rlnt_wh_item1_key select 0) == str(rlnt_wh_item2_key select 0)) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH","Detected that item hotkey 1 and 2 are equal!"] call RLNT_wh_postDebug;
			["error","WH","You have to change one of the hotkeys to prevent errors."] call RLNT_wh_postDebug;
		};

		if (!dayz_classicBloodBagSystem && ((toLower rlnt_wh_item1 == "itembloodbag") || (toLower rlnt_wh_item2 == "itembloodbag"))) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH","Detected that a blood bag is used as quick-slot-item but the classic blood bag system is disabled!"] call RLNT_wh_postDebug;
			["error","WH","You have to turn on the dayz_classicBloodBagSystem to use blood bags as quick-slot-items."] call RLNT_wh_postDebug;
		};

		if ((isNil "rlnt_wh_item1") && !(isNil "rlnt_wh_item2")) then {
			rlnt_wh_item1 = rlnt_wh_item2;
			rlnt_wh_item1 = nil;
			["fix","WH","Detected that Item 2 is set but Item 1 doesn't!"] call RLNT_wh_postDebug;
			["fix","WH","Automatically fixed; exchanged items."] call RLNT_wh_postDebug;
		};

		if ((isNil "rlnt_wh_item2") && (rlnt_wh_itemAmount > 1)) then {
			rlnt_wh_itemAmount = 1;
			["fix","WH","Detected that Item 2 is not used but item amount is too high!"] call RLNT_wh_postDebug;
			["fix","WH","Automatically fixed; set item amount to 1."] call RLNT_wh_postDebug;
		};

		if ((isNil "rlnt_wh_item1") && (rlnt_wh_itemAmount > 0)) then {
			rlnt_wh_itemAmount = 0;
			["fix","WH","Detected that no items are used but item amount is too high!"] call RLNT_wh_postDebug;
			["fix","WH","Automatically fixed; set item amount to 0."] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 1 == -1) then {
			rlnt_wh_bloodSettings set[1, DZE_selfTransfuse_Values select 0];
			["fix","WH","Detected that no custom blood injection amount is set!"] call RLNT_wh_postDebug;
			["fix","WH","Automatically fixed; set amount to Epoch value."] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 0 < 2) then {
			rlnt_wh_bloodSettings set[0, 2];
			["fix","WH","Detected that blood injection duration is too low!"] call RLNT_wh_postDebug;
			["fix","WH","Automatically fixed; set duration to 2."] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 0 > 120) then {
			rlnt_wh_bloodSettings set[0, 120];
			["fix","WH","Detected that blood injection duration is too high!"] call RLNT_wh_postDebug;
			["fix","WH","Automatically fixed; set duration to 120."] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 1 < 500) then {
			rlnt_wh_bloodSettings set[1, 500];
			["fix","WH","Detected that blood injection amount is too low!"] call RLNT_wh_postDebug;
			["fix","WH","Automatically fixed; set amount to 500."] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_bloodSettings select 1 > 12000) then {
			rlnt_wh_bloodSettings set[1, 12000];
			["fix","WH","Detected that blood injection amount is too high!"] call RLNT_wh_postDebug;
			["fix","WH","Automatically fixed; set amount to 12000."] call RLNT_wh_postDebug;
		};
	};

	case "update": {
		if !(rlnt_wh_doLoop) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH","Update function was triggered before display was spawned!"] call RLNT_wh_postDebug;
			["error","WH","Script cancelled to prevent further errors."] call RLNT_wh_postDebug;
		};
	};

	case "action": {
		if !(rlnt_wh_doLoop) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH","Something seems to be wrong with your Weapon HUD installation!"] call RLNT_wh_postDebug;
			["error","WH","It's recommended to check the installation or reinstall the whole script."] call RLNT_wh_postDebug;
		};

		if (rlnt_wh_itemAmount == 0) exitWith {
			rlnt_wh_errorsFound = true;
			["error","WH","Detected that action function was triggered without having quick-slot-items enabled!"] call RLNT_wh_postDebug;
			["error","WH","It's recommended to check the keyboard.sqf."] call RLNT_wh_postDebug;
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
