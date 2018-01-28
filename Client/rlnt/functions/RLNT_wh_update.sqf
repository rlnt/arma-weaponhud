/*
File:			RLNT_wh_update.sqf
Author:			RLNT
Description:	update check function for Weapon HUD
*/
disableSerialization;
private ["_style","_item1","_item2","_cItem1","_cItem2","_primary","_cPrimary","_secondary","_cSecondary","_handgun","_cHandgun"];


/*  DEBUG  */
["function","WH","Update function"] call RLNT_wh_postDebug;


/*  ERROR PREVENTION  */
"update" call RLNT_wh_errorCheck;
if (rlnt_wh_errorsFound) exitWith {
	"error" call RLNT_wh_notifyUser;
};


/*  VARIABLES  */
_style		= _this select 0;
_item1		= _this select 1;
_item2		= _this select 2;
_cItem1		= _item1;
_cItem2		= _item2;
_primary	= "";
_cPrimary	= "";
_secondary	= "";
_cSecondary	= "";
_handgun	= "";
_cHandgun	= "";


/*  UPDATE CHECK LOOP  */
while {rlnt_wh_doLoop} do {

	/*  CHECK DIFFERENCE  */
	//Primary
	if (_cPrimary != _primary) then {
		[1,_primary,_style] call RLNT_wh_switchInfo;
		_cPrimary = _primary;
	};
	//Secondary
	if (_cSecondary != _secondary) then {
		[2,_secondary,_style] call RLNT_wh_switchInfo;
		_cSecondary = _secondary;
	};
	//Handgun
	if (_cHandgun != _handgun) then {
		[3,_handgun,_style] call RLNT_wh_switchInfo;
		_cHandgun = _handgun;
	};
	//Item 1
	if (_cItem1 != _item1) then {
		[4,_item1,_style] call RLNT_wh_switchInfo;
		_cItem1 = _item1;
	};
	//Item 2
	if (_cItem2 != _item2) then {
		 [5,_item2,_style] call RLNT_wh_switchInfo;
		 _cItem2 = _item2;
	};

	/*  SAVE CURRENT  */
	//Primary
	_primary = getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'displayName');
	//Secondary
	if (DZE_TwoPrimaries == 2) then {
		_secondary = getText(configFile >> 'CfgWeapons' >> dayz_onBack >> 'displayName');
	};
	//Handgun
	_handgun = "";
	{
		if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
			_handgun = getText(configFile >> 'CfgWeapons' >> _x >> 'displayName');
		};
	} forEach weapons player;
	//Item 1 and 2
	if (rlnt_wh_itemAmount == 1) then {
		_item1 = str({_x == rlnt_wh_item1} count (magazines player));
	} else {
		if (rlnt_wh_itemAmount == 2) then {
			_item1 = str({_x == rlnt_wh_item1} count (magazines player));
			_item2 = str({_x == rlnt_wh_item2} count (magazines player));
		};
	};

	/*  PAUSE LOOP  */
	if (rlnt_wh_doLoop) then {
		uiSleep rlnt_wh_refreshRate;
	};
};
