/*
File:			RLNT_wh_update.sqf
Author:			Relentless
Description:	Switch function for Weapon HUD
*/
disableSerialization;
private ["_type","_object","_style","_display","_smallWeapons"];


/*  DEBUG  */
["function","WH","Switch function"] call RLNT_wh_postDebug;


/*  VARIABLES  */
_type			= _this select 0;
_object			= _this select 1;
_style			= _this select 2;
_display		= uiNamespace getVariable["rlnt_weaponhud_style_" + str(_style), displayNull];
_smallWeapons	= [];

{
	_smallWeapons set[_forEachIndex, toLower _x];
} forEach rlnt_wh_smallWeapons;


/*  UPDATE IMAGES AND INFO  */
switch (_style) do {

	//Style 1 - 2 Boxes
	case 1: {
		//Primary
		if (_type == 1) then {
			(_display displayCtrl 1207) ctrlSetText(getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'picture'));
			(_display displayCtrl 1033) ctrlSetText(_object);
		};

		//Handgun
		if (_type == 3) then {
			{
				if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
					if !(toLower _x in _smallWeapons) then {
						(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
						(_display displayCtrl 1209) ctrlSetText("");
					} else {
						(_display displayCtrl 1208) ctrlSetText("");
						(_display displayCtrl 1209) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
					};
				};
			} forEach weapons player;
			(_display displayCtrl 1037) ctrlSetText(_object);
		};
	};

	//Style 2 - 3 Boxes
	case 2: {
		//Primary
		if (_type == 1) then {
			(_display displayCtrl 1207) ctrlSetText(getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'picture'));
			(_display displayCtrl 1033) ctrlSetText(_object);
		};

		//Secondary
		if (_type == 2) then {
			(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> dayz_onBack >> 'picture'));
			(_display displayCtrl 1209) ctrlSetText("");
			(_display displayCtrl 1037) ctrlSetText(_object);
		};

		//Handgun
		if (_type == 3) then {
			if !(DZE_TwoPrimaries == 2) then {
				{
					if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
						if !(toLower _x in _smallWeapons) then {
							(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
							(_display displayCtrl 1209) ctrlSetText("");
						} else {
							(_display displayCtrl 1208) ctrlSetText("");
							(_display displayCtrl 1209) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
						};
					};
				} forEach weapons player;
				(_display displayCtrl 1037) ctrlSetText(_object);
			} else {
				{
					if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
						if !(toLower _x in _smallWeapons) then {
							(_display displayCtrl 1210) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
							(_display displayCtrl 1211) ctrlSetText("");
						} else {
							(_display displayCtrl 1210) ctrlSetText("");
							(_display displayCtrl 1211) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
						};
					};
				} forEach weapons player;
				(_display displayCtrl 1041) ctrlSetText(_object);
			};
		};

		//Item 1
		if (_type == 4) then {
			(_display displayCtrl 1042) ctrlSetText(_object);
		};
	};

	//Style 3 - 4 Boxes
	case 3: {
		//Primary
		if (_type == 1) then {
			(_display displayCtrl 1207) ctrlSetText(getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'picture'));
			(_display displayCtrl 1033) ctrlSetText(_object);
		};

		//Secondary
		if (_type == 2) then {
			(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> dayz_onBack >> 'picture'));
			(_display displayCtrl 1037) ctrlSetText(_object);
		};

		//Handgun
		if (_type == 3) then {
			if !(DZE_TwoPrimaries == 2) then {
				{
					if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
						if !(toLower _x in _smallWeapons) then {
							(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
							(_display displayCtrl 1209) ctrlSetText("");
						} else {
							(_display displayCtrl 1208) ctrlSetText("");
							(_display displayCtrl 1209) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
						};
					};
				} forEach weapons player;
				(_display displayCtrl 1037) ctrlSetText(_object);
			} else {
				{
					if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
						if !(toLower _x in _smallWeapons) then {
							(_display displayCtrl 1210) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
							(_display displayCtrl 1211) ctrlSetText("");
						} else {
							(_display displayCtrl 1210) ctrlSetText("");
							(_display displayCtrl 1211) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
						};
					};
				} forEach weapons player;
				(_display displayCtrl 1041) ctrlSetText(_object);
			};
		};

		//Item 1
		if (_type == 4) then {
			if !(DZE_TwoPrimaries == 2) then {
				(_display displayCtrl 1047) ctrlSetText(_object);
			} else {
				(_display displayCtrl 1042) ctrlSetText(_object);
			};
		};

		//Item 2
		if (_type == 5) then {
			(_display displayCtrl 1047) ctrlSetText(_object);
		};
	};

	//Style 4 - 5 Boxes
	case 4: {
		//Primary
		if (_type == 1) then {
			(_display displayCtrl 1207) ctrlSetText(getText(configFile >> 'CfgWeapons' >> (primaryWeapon player) >> 'picture'));
			(_display displayCtrl 1033) ctrlSetText(_object);
		};

		//Secondary
		if (_type == 2) then {
			(_display displayCtrl 1208) ctrlSetText(getText(configFile >> 'CfgWeapons' >> dayz_onBack >> 'picture'));
			(_display displayCtrl 1037) ctrlSetText(_object);
		};

		//Handgun
		if (_type == 3) then {
			{
				if ((getNumber(configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {
					if !(toLower _x in _smallWeapons) then {
						(_display displayCtrl 1209) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
						(_display displayCtrl 1210) ctrlSetText("");
					} else {
						(_display displayCtrl 1209) ctrlSetText("");
						(_display displayCtrl 1210) ctrlSetText(getText(configFile >> 'CfgWeapons' >> _x >> 'picture'));
					};
				};
			} forEach weapons player;
			(_display displayCtrl 1041) ctrlSetText(_object);
		};

		//Item 1
		if (_type == 4) then {
			(_display displayCtrl 1046) ctrlSetText(_object);
		};

		//Item 2
		if (_type == 5) then {
			(_display displayCtrl 1051) ctrlSetText(_object);
		};
	};
};
