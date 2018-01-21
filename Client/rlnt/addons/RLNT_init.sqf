/*
File:			RLNT_init.sqf
Author:			Relentless
Description:	Client Init for all RLNT-Additions
*/


////////////////////////////////////////////////////////////
////  Developer-Option:									////
////  Variable to toggle on or off an advanced option	////
////  to help devs finding bugs in this addon.			////
////  DON'T EDIT IF YOU DON'T KNOW WHAT YOU ARE DOING!	////
////////////////////////////////////////////////////////////
rlnt_debug = false;


/*  FILE EXECUTION  */
call compile preprocessFileLineNumbers "rlnt\addons\RLNT_compiles.sqf";				//Compiles
call compile preprocessFileLineNumbers "rlnt\addons\Weapon HUD\RLNT_wh_init.sqf";	//Weapon HUD Init


/*  DEBUG  */
["file","MAIN","Client Init"] call RLNT_postDebug;
