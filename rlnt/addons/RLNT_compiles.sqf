/*
File:			RLNT_compiles.sqf
Author:			Relentless
Description:	Compiles for all RLNT-Additions
*/


/*  BOTH  */
RLNT_postDebug = compile preprocessFileLineNumbers "rlnt\functions\RLNT_debug.sqf";


/*  SERVER  */
if (isServer) then {
};


/*  CLIENT  */
if (!isDedicated && hasInterface) then {

	//Weapon HUD
	RLNT_wh_postDebug		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_debug.sqf";
	RLNT_wh_errorCheck		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_error.sqf";
	RLNT_wh_notifyUser		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_notify.sqf";
	RLNT_wh_toggleHUD		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_toggle.sqf";
	RLNT_wh_startSetup		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_setup.sqf";
	RLNT_wh_checkUpdate		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_update.sqf";
	RLNT_wh_switchInfo		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_switch.sqf";
	RLNT_wh_selectAction	= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_action.sqf";
};


/*  DEBUG  */
["file","MAIN","Compiles"] call RLNT_postDebug;
