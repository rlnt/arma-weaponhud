/*
File:			RLNT_wh_notify.sqf
Author:			Relentless
Description:	Notification function for Weapon HUD
*/
private ["_message","_messageext","_type","_check","_item","_success","_interrupt"];


/*  DEBUG  */
["function","WH","Notification"] call RLNT_wh_postDebug;


/*  VARIABLES  */
_type = _this select 0;
_message = "";
_messageext = "";


switch (_type) do {

	case "error": {
		_message	= "You have an error either in your config or in your installation!";
		_messageext = "Check the RPT for more info or contact an Admin!";
	};

	case "toggle": {
		_check = _this select 1;

		if (_check) then {
			_message = "The Weapon HUD has been toggled on!";
		} else {
			_message = "The Weapon HUD has been toggled off!";
		};
	};

	case "action": {
		_item = _this select 1;
		_success = _this select 2;

		switch (_item) do {

			case "antibiotic": {
				if (_success) then {
					_message = "You've taken some antibiotics!";
				} else {
					_message = "You don't have any antibiotics left!";
				};
			};

			case "bandage": {
				if (_success) then {
					_message = "You've bandaged yourself!";
				} else {
					_message = "You don't have any bandages left!";
				};
			};

			case "bloodbag": {
				_interrupt = _this select 3;

				if (_success && _interrupt) then {
					_message = format ["You can only self-blood-bag every %1 seconds!", DZE_selfTransfuse_Values select 2];
				};

				if (_success && !_interrupt) then {
					_message = "You've blood-bagged yourself!";
				};

				if (!_success && _interrupt) then {
					_message = "Blood-bagging has been cancelled!";
				};

				if !(_success && _interrupt) then {
					_message = "You don't have any blood bags left!";
				};
			};

			case "morphine": {
				if (_success) then {
					_message = "You've injected some morphine!";
				} else {
					_message = "You don't have any morphine left!";
				};
			};

			case "painkiller": {
				if (_success) then {
					_message = "You've taken some painkillers!";
				} else {
					_message = "You don't have any painkillers left!";
				};
			};
		};
	};
};

switch (rlnt_wh_nfcStyle) do {

	case 1: {
		if (_messageext == "") then {
			["local",rlnt_whup_style,rlnt_whup_tag,"",_message,nil,5,rlnt_whup_fColor,rlnt_whup_bgColor] spawn RLNT_updatePanel;
		} else {
			["local",rlnt_whup_style,rlnt_whup_tag,_message,_messageext,nil,5,rlnt_whup_fColor,rlnt_whup_bgColor] spawn RLNT_updatePanel;
		};
	};

	case 2: {
		if (_messageext == "") then {
			systemChat _message;
		} else {
			systemChat format["%1 %2", _message, _messageext];
		};
	};

	case 3: {
		if (_messageext == "") then {
			cutText[_message, "PLAIN DOWN"];
		} else {
			cutText[format["%1 %2", _message, _messageext], "PLAIN DOWN"];
		};
	};

	case 4: {
		if (_messageext == "") then {
			_message call dayz_rollingMessages;
		} else {
			format["%1 %2", _message, _messageext] call dayz_rollingMessages;
		};
	};
};
