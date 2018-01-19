if (isServer) then {
	diag_log "Loading custom server compiles...";
};


if (!isDedicated) then {
	diag_log "Loading custom client compiles...";
};


DZ_KeyDown_EH = compile preprocessFileLineNumbers "dayz_code\compile\keyboard.sqf";
