/*
File:			RLNT_debug.sqf
Author:			Relentless
Description:	Debug function for all RLNT-Additions
*/
private ["_type","_tag","_name"];


/*  VARIABLES  */
_type	= _this select 0;
_tag	= _this select 1;
_name	= _this select 2;


/*  DEBUG  */
switch (_type) do {

	case "file": {
		if (RLNT_debug) then {
			diag_log format["[RLNT][%1] %2 successfully loaded!", _tag, _name];
		};
	};

	case "compile": {
		if (RLNT_debug) then {
			diag_log format["[RLNT][%1] %2 are loading...", _tag, _name];
		};
	};
};
