/*
File:			RLNT_wh_notify.sqf
Author:			RLNT
Description:	notification function for Weapon HUD
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
		_message	= localize "STR_RLNT_WH_ERROR_1";
		_messageext = localize "STR_RLNT_WH_ERROR_2";
	};

	case "toggle": {
		_check = _this select 1;

		if (_check) then {
			_message = localize "STR_RLNT_WH_TOGGLE_ON";
		} else {
			_message = localize "STR_RLNT_WH_TOGGLE_OFF";
		};
	};

	case "action": {
		_item = _this select 1;
		_success = _this select 2;

		switch (_item) do {

			case "antibiotic": {
				if (_success) then {
					_message = localize "STR_RLNT_WH_ANTIBIOTIC_1";
				} else {
					_message = localize "STR_RLNT_WH_ANTIBIOTIC_2";
				};
			};

			case "bandage": {
				if (_success) then {
					_message = localize "STR_RLNT_WH_BANDAGE_1";
				} else {
					_message = localize "STR_RLNT_WH_BANDAGE_2";
				};
			};

			case "bloodbag": {
				_interrupt = _this select 3;

				if (_success && !_interrupt) then {
					_message = localize "STR_RLNT_WH_BLOODBAG_1";
				};
				if !(_success && _interrupt) then {
					_message = localize "STR_RLNT_WH_BLOODBAG_2";
				};
				if (!_success && _interrupt) then {
					_message = localize "STR_RLNT_WH_BLOODBAG_3";
				};
				if (_success && _interrupt) then {
					_message = localize format ["STR_RLNT_WH_BLOODBAG_4", DZE_selfTransfuse_Values select 2];
				};
			};

			case "morphine": {
				if (_success) then {
					_message = localize "STR_RLNT_WH_MORPHINE_1";
				} else {
					_message = localize "STR_RLNT_WH_MORPHINE_2";
				};
			};

			case "painkiller": {
				if (_success) then {
					_message = localize "STR_RLNT_WH_PAINKILLER_1";
				} else {
					_message = localize "STR_RLNT_WH_PAINKILLER_2";
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
