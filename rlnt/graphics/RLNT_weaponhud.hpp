/*
File:			RLNT_weaponhud.hpp
Author:			Relentless
Description:	Display for Weapon HUD
Calculation:	1 GUI_GRID = 0.0173 * SafezoneH
*/

class rlnt_weaponhud_style_1 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_1', _this select 0];";

	class Controls {
		class rlnt_text_border_1: RLNT_RscText
		{
			idc = 1031;
			x = 0.414407 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_1: RLNT_RscText
		{
			idc = 1032;
			x = 0.416469 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_1: RLNT_RscPicture
		{
			idc = 1207;
			text = "";
			x = 0.418531 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0752812 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_1: RLNT_RscText_Shadow
		{
			idc = 1033;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.416469 * safezoneW + safezoneX;
			y = 0.8872 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.01384 * SafezoneH;
		};
		class rlnt_text_hotkey_1: RLNT_RscText_Shadow
		{
			idc = 1034;
			text = "1";
			x = 0.447399 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0165002 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
		class rlnt_text_border_2: RLNT_RscText
		{
			idc = 1035;
			x = 0.502062 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_2: RLNT_RscText
		{
			idc = 1036;
			x = 0.504125 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_2: RLNT_RscPicture
		{
			idc = 1208;
			text = "";
			x = 0.506187 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0752812 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_picture_icon_2q: RLNT_RscPicture
		{
			idc = 1209;
			text = "";
			x = 0.520621 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0464065 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_2: RLNT_RscText_Shadow
		{
			idc = 1037;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.504125 * safezoneW + safezoneX;
			y = 0.8872 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.01384 * SafezoneH;
		};
		class rlnt_text_hotkey_2: RLNT_RscText_Shadow
		{
			idc = 1038;
			text = "2";
			x = 0.535055 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0175315 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
	};
};

class rlnt_weaponhud_style_2 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_2', _this select 0];";

	class Controls {
		class rlnt_text_border_1: RLNT_RscText
		{
			idc = 1031;
			x = 0.372126 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_1: RLNT_RscText
		{
			idc = 1032;
			x = 0.374188 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_1: RLNT_RscPicture
		{
			idc = 1207;
			text = "";
			x = 0.37625 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.07425 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_1: RLNT_RscText_Shadow
		{
			idc = 1033;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.374188 * safezoneW + safezoneX;
			y = 0.885 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_hotkey_1: RLNT_RscText_Shadow
		{
			idc = 1034;
			text = "1";
			x = 0.405125 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0175315 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
		class rlnt_text_border_2: RLNT_RscText
		{
			idc = 1035;
			x = 0.458749 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_2: RLNT_RscText
		{
			idc = 1036;
			x = 0.460812 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_2: RLNT_RscPicture
		{
			idc = 1208;
			text = "";
			x = 0.462874 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0752812 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_picture_icon_2q: RLNT_RscPicture
		{
			idc = 1209;
			text = "";
			x = 0.477322 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0464065 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_2: RLNT_RscText_Shadow
		{
			idc = 1037;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.460812 * safezoneW + safezoneX;
			y = 0.885 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_hotkey_2: RLNT_RscText_Shadow
		{
			idc = 1038;
			text = "2";
			x = 0.489681 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0185627 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
		class rlnt_text_border_3: RLNT_RscText
		{
			idc = 1039;
			x = 0.546406 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_3: RLNT_RscText
		{
			idc = 1040;
			x = 0.548468 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_3: RLNT_RscPicture
		{
			idc = 1210;
			text = "";
			x = 0.550531 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.07425 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_picture_icon_3q: RLNT_RscPicture
		{
			idc = 1211;
			text = "";
			x = 0.564954 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0464065 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_3: RLNT_RscText_Shadow
		{
			idc = 1041;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.548468 * safezoneW + safezoneX;
			y = 0.885 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_amount_3: RLNT_RscText
		{
			idc = 1042;
			text = "";
			x = 0.613437 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.02595 * SafezoneH;
		};
		class rlnt_text_hotkey_3: RLNT_RscText_Shadow
		{
			idc = 1043;
			text = "3";
			x = 0.578368 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0185628 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
	};
};

class rlnt_weaponhud_style_3 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_3', _this select 0];";

	class Controls {
		class rlnt_text_border_1: RLNT_RscText
		{
			idc = 1031;
			x = 0.326751 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_1: RLNT_RscText
		{
			idc = 1032;
			x = 0.328811 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_1: RLNT_RscPicture
		{
			idc = 1207;
			text = "";
			x = 0.330875 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.07425 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_1: RLNT_RscText_Shadow
		{
			idc = 1033;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.328813 * safezoneW + safezoneX;
			y = 0.8872 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_hotkey_1: RLNT_RscText_Shadow
		{
			idc = 1034;
			text = "1";
			x = 0.359743 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0165002 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
		class rlnt_text_border_2: RLNT_RscText
		{
			idc = 1035;
			x = 0.414407 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_2: RLNT_RscText
		{
			idc = 1036;
			x = 0.416468 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_2: RLNT_RscPicture
		{
			idc = 1208;
			text = "";
			x = 0.418531 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0752812 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_picture_icon_2q: RLNT_RscPicture
		{
			idc = 1209;
			text = "";
			x = 0.432977 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0464065 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_2: RLNT_RscText_Shadow
		{
			idc = 1037;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.416469 * safezoneW + safezoneX;
			y = 0.8872 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_hotkey_2: RLNT_RscText_Shadow
		{
			idc = 1038;
			text = "2";
			x = 0.447399 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0165002 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
		class rlnt_text_border_3: RLNT_RscText
		{
			idc = 1039;
			x = 0.502062 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_3: RLNT_RscText
		{
			idc = 1040;
			x = 0.504125 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_3: RLNT_RscPicture
		{
			idc = 1210;
			text = "";
			x = 0.506187 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0752812 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_picture_icon_3q: RLNT_RscPicture
		{
			idc = 1211;
			text = "";
			x = 0.520621 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0464065 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_3: RLNT_RscText_Shadow
		{
			idc = 1041;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.504124 * safezoneW + safezoneX;
			y = 0.8872 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_amount_3: RLNT_RscText
		{
			idc = 1042;
			text = "";
			x = 0.572212 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.02595 * SafezoneH;
		};
		class rlnt_text_hotkey_3: RLNT_RscText_Shadow
		{
			idc = 1043;
			text = "3";
			x = 0.535055 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0175315 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
		class rlnt_text_border_4: RLNT_RscText
		{
			idc = 1044;
			x = 0.589718 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_4: RLNT_RscText
		{
			idc = 1045;
			x = 0.59178 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_4: RLNT_RscPicture
		{
			idc = 1212;
			text = "";
			x = 0.593843 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.07425 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_picture_icon_4q: RLNT_RscPicture
		{
			idc = 1213;
			text = "";
			x = 0.60827 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0464065 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_4: RLNT_RscText_Shadow
		{
			idc = 1046;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.591781 * safezoneW + safezoneX;
			y = 0.8872 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_amount_4: RLNT_RscText
		{
			idc = 1047;
			text = "";
			x = 0.658801 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.02595 * SafezoneH;
		};
		class rlnt_text_hotkey_4: RLNT_RscText_Shadow
		{
			idc = 1048;
			text = "4";
			x = 0.621682 * safezoneW + safezoneX;
			y = 0.9202 * safezoneH + safezoneY;
			w = 0.0165002 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
	};
};

class rlnt_weaponhud_style_4 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_4', _this select 0];";

	class Controls {
		class rlnt_text_border_1: RLNT_RscText
		{
			idc = 1031;
			x = 0.28447 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_1: RLNT_RscText
		{
			idc = 1032;
			x = 0.28653 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_1: RLNT_RscPicture
		{
			idc = 1207;
			text = "";
			x = 0.288594 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.07425 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_1: RLNT_RscText_Shadow
		{
			idc = 1033;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.28653 * safezoneW + safezoneX;
			y = 0.8828 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_hotkey_1: RLNT_RscText_Shadow
		{
			idc = 1034;
			text = "1";
			x = 0.316431 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0175315 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
		class rlnt_text_border_2: RLNT_RscText
		{
			idc = 1035;
			x = 0.372126 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_2: RLNT_RscText
		{
			idc = 1036;
			x = 0.374188 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_2: RLNT_RscPicture
		{
			idc = 1208;
			text = "";
			x = 0.37625 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.07425 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_2: RLNT_RscText_Shadow
		{
			idc = 1037;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.374188 * safezoneW + safezoneX;
			y = 0.8828 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_hotkey_2: RLNT_RscText_Shadow
		{
			idc = 1038;
			text = "2";
			x = 0.405125 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0175315 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
		class rlnt_text_border_3: RLNT_RscText
		{
			idc = 1039;
			x = 0.458749 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_3: RLNT_RscText
		{
			idc = 1040;
			x = 0.460812 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_3: RLNT_RscPicture
		{
			idc = 1209;
			text = "";
			x = 0.462875 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0752812 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_picture_icon_3q: RLNT_RscPicture
		{
			idc = 1210;
			text = "";
			x = 0.477322 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0464065 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_3: RLNT_RscText_Shadow
		{
			idc = 1041;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.460813 * safezoneW + safezoneX;
			y = 0.8828 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_hotkey_3: RLNT_RscText_Shadow
		{
			idc = 1042;
			text = "3";
			x = 0.489681 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0185627 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
		class rlnt_text_border_4: RLNT_RscText
		{
			idc = 1043;
			x = 0.546406 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_4: RLNT_RscText
		{
			idc = 1044;
			x = 0.548468 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_4: RLNT_RscPicture
		{
			idc = 1211;
			text = "";
			x = 0.550531 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.07425 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_picture_icon_4q: RLNT_RscPicture
		{
			idc = 1212;
			text = "";
			x = 0.564968 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0464065 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_4: RLNT_RscText_Shadow
		{
			idc = 1045;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.548469 * safezoneW + safezoneX;
			y = 0.8828 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_amount_4: RLNT_RscText
		{
			idc = 1046;
			text = "";
			x = 0.615523 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.02595 * SafezoneH;
		};
		class rlnt_text_hotkey_4: RLNT_RscText_Shadow
		{
			idc = 1047;
			text = "4";
			x = 0.578368 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0185628 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
		class rlnt_text_border_5: RLNT_RscText
		{
			idc = 1048;
			x = 0.634062 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0835313 * safezoneW;
			h = 0.0836 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_text_inner_5: RLNT_RscText
		{
			idc = 1049;
			x = 0.636124 * safezoneW + safezoneX;
			y = 0.9114 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0748 * safezoneH;
			colorBackground[] = {0,0,0,0.5};
		};
		class rlnt_picture_icon_5: RLNT_RscPicture
		{
			idc = 1213;
			text = "";
			x = 0.638186 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.07425 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_picture_icon_5q: RLNT_RscPicture
		{
			idc = 1214;
			text = "";
			x = 0.652603 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0464065 * safezoneW;
			h = 0.066 * safezoneH;
		};
		class rlnt_text_name_5: RLNT_RscText_Shadow
		{
			idc = 1050;
			type = CT_STATIC;
			style = 2;
			text = "";
			x = 0.636124 * safezoneW + safezoneX;
			y = 0.8828 * safezoneH + safezoneY;
			w = 0.0794062 * safezoneW;
			h = 0.0176 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.0173 * SafezoneH;
		};
		class rlnt_text_amount_5: RLNT_RscText
		{
			idc = 1051;
			text = "";
			x = 0.703134 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.0154688 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {1,1,1,1};
			sizeEx = 0.02595 * SafezoneH;
		};
		class rlnt_text_hotkey_5: RLNT_RscText_Shadow
		{
			idc = 1052;
			text = "5";
			x = 0.666025 * safezoneW + safezoneX;
			y = 0.9158 * safezoneH + safezoneY;
			w = 0.0185628 * safezoneW;
			h = 0.066 * safezoneH;
			colorText[] = {1,1,1,0.8};
			sizeEx = 0.0519 * SafezoneH;
		};
	};
};
