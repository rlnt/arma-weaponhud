/*
File:			RLNT_wh_setup.sqf
Author:			Relentless
Description:	Setup function for Weapon HUD
*/
disableSerialization;
private ["_layer","_smallWeapons","_itemList","_isListedItem1","_amountItem1","_nameItem1","_isListedItem2","_amountItem2","_nameItem2","_boxes","_namePrimary","_nameSecondary","_nameHandgun","_style","_ftArray","_bgArray","_hkArray","_display"];


/*  SKIP SETUP IF DEFAULT STATE IS FALSE  */
if (!rlnt_wh_defaultState) exitWith {
	rlnt_wh_defaultState	= true;
	rlnt_wh_doLoop			= true;
};


/*  DEBUG  */
["function","WH","Setup function"] call RLNT_wh_postDebug;


/*  ERROR PREVENTION  */
"setup" call RLNT_wh_errorCheck;
if (rlnt_wh_errorsFound) exitWith {
	"error" call RLNT_wh_notifyUser;
};


/*  VARIABLES  */
_layer			= 1300;
_smallWeapons	= [];
_itemList		= [];

{
	_smallWeapons set[_forEachIndex, toLower _x];
} forEach rlnt_wh_smallWeapons;

{
	_itemList set[_forEachIndex, toLower _x];
} forEach rlnt_wh_itemList;


/*  ITEM AMOUNT DEPENDENTS  */
switch (rlnt_wh_itemAmount) do {

	//No items
	case 0: {
		["other","WH","Item amount is 0."] call RLNT_wh_postDebug;
	};

	//1 item
	case 1: {
		["other","WH","Item amount is 1."] call RLNT_wh_postDebug;

		_isListedItem1	= toLower rlnt_wh_item1 in _itemList;
		_amountItem1	= str({_x == rlnt_wh_item1} count (magazines player));
		_nameItem1		= getText(configFile >> 'CfgMagazines' >> rlnt_wh_item1 >> 'displayName');
	};

	//2 items
	case 2: {
		["other","WH","Item amount is 2."] call RLNT_wh_postDebug;

		_isListedItem1	= toLower rlnt_wh_item1 in _itemList;
		_amountItem1	= str({_x == rlnt_wh_item1} count (magazines player));
		_nameItem1		= getText(configFile >> 'CfgMagazines' >> rlnt_wh_item1 >> 'displayName');
		_isListedItem2	= toLower rlnt_wh_item2 in _itemList;
		_amountItem2	= str({_x == rlnt_wh_item2} count (magazines player));
		_nameItem2		= getText(configFile >> 'CfgMagazines' >> rlnt_wh_item2 >> 'displayName');
	};
};


/*  WEAPON AMOUNT DEPENDENTS  */
if !(DZE_TwoPrimaries == 2) then {
	["other","WH","Weapon amount is 1."] call RLNT_wh_postDebug;

	_boxes			= 2 + rlnt_wh_itemAmount;
	_namePrimary	= getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'displayName');
	_nameHandgun = "";
	{
		if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
			_nameHandgun = getText(configFile >> 'CfgWeapons' >> _x >> 'displayName');
		};
	} forEach weapons player;
} else {
	["other","WH","Weapon amount is 2."] call RLNT_wh_postDebug;

	_boxes 			= 3 + rlnt_wh_itemAmount;
	_namePrimary	= getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'displayName');
	_nameSecondary	= getText(configFile >> 'CfgWeapons' >> dayz_onBack >> 'displayName');
	_nameHandgun = "";
	{
		if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
			_nameHandgun = getText(configFile >> 'CfgWeapons' >> _x >> 'displayName');
		};
	} forEach weapons player;
};


/*  SETUP DISPLAY  */
_style = _boxes - 1;
["other","WH", format["Display style is %1.", _style]] call RLNT_wh_postDebug;

_layer cutRsc["rlnt_weaponhud_style_" + str(_style), "PLAIN", 1];
uiSleep 0.2;

_display = uiNamespace getVariable["rlnt_weaponhud_style_" + str(_style), displayNull];


/*  SET COLORS  */
switch (_style) do {

	//Style 1 - 2 Boxes
	case 1: {
		_ftArray = [1033,1037];
		_bgArray = [1031,1035];
		_hkArray = [1034,1038];
	};

	//Style 2 - 3 Boxes
	case 2: {
		_ftArray = [1033,1037,1041,1042];
		_bgArray = [1031,1035,1039];
		_hkArray = [1034,1038,1043];
	};

	//Style 3 - 4 Boxes
	case 3: {
		_ftArray = [1033,1037,1041,1042,1046,1047];
		_bgArray = [1031,1035,1039,1044];
		_hkArray = [1034,1038,1043,1048];
	};

	//Style 4 - 5 Boxes
	case 4: {
		_ftArray = [1033,1037,1041,1045,1046,1050,1051];
		_bgArray = [1031,1035,1039,1043,1048];
		_hkArray = [1034,1038,1042,1047,1052];
	};
};

{
	(_display displayCtrl _x) ctrlSetTextColor rlnt_wh_fontColor;
} forEach _ftArray;

{
	(_display displayCtrl _x) ctrlSetBackgroundColor rlnt_wh_bgColor;
} forEach _bgArray;

{
	(_display displayCtrl _x) ctrlSetTextColor rlnt_wh_hkColor;
} forEach _hkArray;

["other","WH",format["Font: %1; Background: %2; Hotkey: %3", str(_ftArray), str(_bgArray), str(_hkArray)]] call RLNT_wh_postDebug;


/*  SET IMAGES AND INFORMATION  */
switch (_style) do {

	//Style 1 - 2 Boxes
	case 1: {
		["other","WH","The Weapon HUD is style 1."] call RLNT_wh_postDebug;

		//Primary
		(_display displayCtrl 1207) ctrlSetText(getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'picture'));

		//Handgun
		{
			if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
				if !(toLower _x in _smallWeapons) then {
					(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
				} else {
					(_display displayCtrl 1209) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
				};
			};
		} forEach weapons player;

		//Weapon and Item names
		if (rlnt_wh_showWeaponNames) then {
			(_display displayCtrl 1033) ctrlSetText(_namePrimary);
			(_display displayCtrl 1037) ctrlSetText(_nameHandgun);
		};
	};

	//Style 2 - 3 Boxes
	case 2: {
		if !(DZE_TwoPrimaries == 2) then {
			["other","WH","The Weapon HUD is style 2.1."] call RLNT_wh_postDebug;

			//Primary
			(_display displayCtrl 1207) ctrlSetText(getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'picture'));

			//Handgun
			{
				if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
					if !(toLower _x in _smallWeapons) then {
						(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
					} else {
						(_display displayCtrl 1209) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
					};
				};
			} forEach weapons player;

			//Item 1
			(_display displayCtrl 1043) ctrlSetText(rlnt_wh_item1_keyName);
			if !(_isListedItem1) then {
				(_display displayCtrl 1210) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item1 >> 'picture'));
			} else {
				(_display displayCtrl 1211) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item1 >> 'picture'));
			};

			//Weapon and Item names
			if (rlnt_wh_showWeaponNames) then {
				(_display displayCtrl 1033) ctrlSetText(_namePrimary);
				(_display displayCtrl 1037) ctrlSetText(_nameHandgun);
			};
			if (rlnt_wh_showItemNames) then {
				(_display displayCtrl 1041) ctrlSetText(_nameItem1);
			};

			//Item amounts
			if (rlnt_wh_showItemAmount) then {
				(_display displayCtrl 1042) ctrlSetText(_amountItem1);
			};
		} else {
			["other","WH","The Weapon HUD is style 2.2."] call RLNT_wh_postDebug;

			//Primary
			(_display displayCtrl 1207) ctrlSetText(getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'picture'));

			//Secondary
			(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> dayz_onBack >> 'picture'));

			//Handgun
			{
				if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
					if !(toLower _x in _smallWeapons) then {
						(_display displayCtrl 1210) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
					} else {
						(_display displayCtrl 1211) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
					};
				};
			} forEach weapons player;

			//Weapon and Item names
			if (rlnt_wh_showWeaponNames) then {
				(_display displayCtrl 1033) ctrlSetText(_namePrimary);
				(_display displayCtrl 1037) ctrlSetText(_nameSecondary);
				(_display displayCtrl 1041) ctrlSetText(_nameHandgun);
			};
		};
	};

	//Style 3 - 4 Boxes
	case 3: {
		if !(DZE_TwoPrimaries == 2) then {
			["other","WH","The Weapon HUD is style 3.1."] call RLNT_wh_postDebug;

			//Primary
			(_display displayCtrl 1207) ctrlSetText(getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'picture'));

			//Handgun
			{
				if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
					if !(toLower _x in _smallWeapons) then {
						(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
					} else {
						(_display displayCtrl 1209) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
					};
				};
			} forEach weapons player;

			//Item 1
			(_display displayCtrl 1043) ctrlSetText(rlnt_wh_item1_keyName);
			if !(_isListedItem1) then {
				(_display displayCtrl 1210) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item1 >> 'picture'));
			} else {
				(_display displayCtrl 1211) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item1 >> 'picture'));
			};

			//Item 2
			(_display displayCtrl 1048) ctrlSetText(rlnt_wh_item2_keyName);
			if !(_isListedItem2) then {
				(_display displayCtrl 1212) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item2 >> 'picture'));
			} else {
				(_display displayCtrl 1213) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item2 >> 'picture'));
			};

			//Weapon and Item names
			if (rlnt_wh_showWeaponNames) then {
				(_display displayCtrl 1033) ctrlSetText(_namePrimary);
				(_display displayCtrl 1037) ctrlSetText(_nameHandgun);

			};
			if (rlnt_wh_showItemNames) then {
				(_display displayCtrl 1041) ctrlSetText(_nameItem1);
				(_display displayCtrl 1046) ctrlSetText(_nameItem2);
			};

			//Item amounts
			if (rlnt_wh_showItemAmount) then {
				(_display displayCtrl 1042) ctrlSetText(_amountItem1);
				(_display displayCtrl 1047) ctrlSetText(_amountItem2);
			};
		} else {
			["other","WH","The Weapon HUD is style 3.2."] call RLNT_wh_postDebug;

			//Primary
			(_display displayCtrl 1207) ctrlSetText(getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'picture'));

			//Secondary
			(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> dayz_onBack >> 'picture'));

			//Handgun
			{
				if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
					if !(toLower _x in _smallWeapons) then {
						(_display displayCtrl 1210) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
					} else {
						(_display displayCtrl 1211) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
					};
				};
			} forEach weapons player;

			//Item 1
			(_display displayCtrl 1048) ctrlSetText(rlnt_wh_item1_keyName);
			if !(_isListedItem1) then {
				(_display displayCtrl 1212) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item1 >> 'picture'));
			} else {
				(_display displayCtrl 1213) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item1 >> 'picture'));
			};

			//Weapon and Item names
			if (rlnt_wh_showWeaponNames) then {
				(_display displayCtrl 1033) ctrlSetText(_namePrimary);
				(_display displayCtrl 1037) ctrlSetText(_nameSecondary);
				(_display displayCtrl 1041) ctrlSetText(_nameHandgun);
			};
			if (rlnt_wh_showItemNames) then {
				(_display displayCtrl 1046) ctrlSetText(_nameItem1);
			};

			//Item amounts
			if (rlnt_wh_showItemAmount) then {
				(_display displayCtrl 1047) ctrlSetText(_amountItem1);
			};
		};
	};

	//Style 4 - 5 Boxes
	case 4: {
		["other","WH","The Weapon HUD is style 4."] call RLNT_wh_postDebug;

		//Primary
		(_display displayCtrl 1207) ctrlSetText(getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'picture'));

		//Secondary
		(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> dayz_onBack >> 'picture'));

		//Handgun
		{
			if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
				if !(toLower _x in _smallWeapons) then {
					(_display displayCtrl 1209) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
				} else {
					(_display displayCtrl 1210) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
				};
			};
		} forEach weapons player;

		//Item 1
		(_display displayCtrl 1047) ctrlSetText(rlnt_wh_item1_keyName);
		if !(_isListedItem1) then {
			(_display displayCtrl 1211) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item1 >> 'picture'));
		} else {
			(_display displayCtrl 1212) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item1 >> 'picture'));
		};

		//Item 2
		(_display displayCtrl 1052) ctrlSetText(rlnt_wh_item2_keyName);
		if !(_isListedItem2) then {
			(_display displayCtrl 1213) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item2 >> 'picture'));
		} else {
			(_display displayCtrl 1214) ctrlSetText(getText(configFile >> 'CfgMagazines' >> rlnt_wh_item2 >> 'picture'));
		};

		//Weapon and Item names
		if (rlnt_wh_showWeaponNames) then {
			(_display displayCtrl 1033) ctrlSetText(_namePrimary);
			(_display displayCtrl 1037) ctrlSetText(_nameSecondary);
			(_display displayCtrl 1041) ctrlSetText(_nameHandgun);
		};
		if (rlnt_wh_showItemNames) then {
			(_display displayCtrl 1045) ctrlSetText(_nameItem1);
			(_display displayCtrl 1050) ctrlSetText(_nameItem2);
		};

		//Item amounts
		if (rlnt_wh_showItemAmount) then {
			(_display displayCtrl 1046) ctrlSetText(_amountItem1);
			(_display displayCtrl 1051) ctrlSetText(_amountItem2);
		};
	};
};


/*  START UPDATE CHECKING LOOP  */
[_style,_amountItem1,_amountItem2] spawn RLNT_wh_checkUpdate;
