/*
File:			RLNT_wh_debug.sqf
Author:			RLNT
Description:	debug function for Weapon HUD
*/
private ["_type","_tag","_name","_action"];


/*  VARIABLES  */
_type	= _this select 0;
_tag	= _this select 1;
_name	= _this select 2;

if (count _this > 3) then {
	_action = _this select 3;
};


/*  DEBUG  */
switch (_type) do {

	case "function": {
		if (RLNT_wh_debug) then {
			diag_log format["[RLNT][%1] %2 was triggered!", _tag, _name];
		};
	};

	case "action": {
		if (RLNT_wh_debug) then {
			diag_log format["[RLNT][%1] %2 %3!", _tag, _name, _action];
		};
	};

	case "error": {
		diag_log format ["[RLNT][ERROR][%1] %2", _tag, _name];
	};

	case "fix": {
		diag_log format ["[RLNT][FIXED][%1] %2", _tag, _name];
	};

	case "other": {
		if (RLNT_wh_debug) then {
			diag_log format["[RLNT][%1] %2", _tag, _name];
		};
	};
};
