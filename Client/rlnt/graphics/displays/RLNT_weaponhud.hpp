/*
File:			RLNT_weaponhud.hpp
Author:			RLNT
Description:	display for Weapon HUD
*/

#include "defines\RLNT_WH_defines.hpp"
#include "defines\RLNT_WH_macros.hpp"

class rlnt_weaponhud_style_1 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_1', _this select 0];";

	class Controls {

		//BOX 1
			class rlnt_1_bg1 : RLNT_WH_Bg1 {
				idc = 1031;
				x = 0.5 + OFFSET_1 - PXWIDTH * 20 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_1_bg2 : RLNT_WH_Bg2 {
				idc = 1032;
				x = 0.5 + OFFSET_1 - PXWIDTH * 19.5 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_1_picture : RLNT_WH_Picture {
				idc = 1207;
				x = 0.5 + OFFSET_1 - PXWIDTH * 18.5 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_1_name : RLNT_WH_Name {
				idc = 1033;
				x = 0.5 + OFFSET_1 - PXWIDTH * 20 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_1_hotkey : RLNT_WH_Hotkey1 {
				idc = 1034;
				x = 0.5 + OFFSET_1 - PXWIDTH * 19.5 * SCALE - PXWIDTH * 0.5;
				text = "1";
			};

		//BOX 2
			class rlnt_2_bg1 : RLNT_WH_Bg1 {
				idc = 1035;
				x = 0.5 + OFFSET_1 + PXWIDTH * 0 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_bg2 : RLNT_WH_Bg2 {
				idc = 1036;
				x = 0.5 + OFFSET_1 + PXWIDTH * 0.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_picture : RLNT_WH_Picture {
				idc = 1208;
				x = 0.5 + OFFSET_1 + PXWIDTH * 1.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_picture_q : RLNT_WH_PictureQ {
				idc = 1209;
				x = 0.5 + OFFSET_1 + PXWIDTH * 5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_name : RLNT_WH_Name {
				idc = 1037;
				x = 0.5 + OFFSET_1 + PXWIDTH * 0 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_hotkey : RLNT_WH_Hotkey1 {
				idc = 1038;
				x = 0.5 + OFFSET_1 + PXWIDTH * 0.5 * SCALE + PXWIDTH * 0.5;
				text = "2";
			};
	};
};

class rlnt_weaponhud_style_2 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_2', _this select 0];";

	class Controls {

		//BOX 1
			class rlnt_1_bg1 : RLNT_WH_Bg1 {
				idc = 1031;
				x = 0.5 + OFFSET_2 - PXWIDTH * 30 * SCALE - PXWIDTH * 1;
			};
			class rlnt_1_bg2 : RLNT_WH_Bg2 {
				idc = 1032;
				x = 0.5 + OFFSET_2 - PXWIDTH * 29.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_1_picture : RLNT_WH_Picture {
				idc = 1207;
				x = 0.5 + OFFSET_2 - PXWIDTH * 28.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_1_name : RLNT_WH_Name {
				idc = 1033;
				x = 0.5 + OFFSET_2 - PXWIDTH * 30 * SCALE - PXWIDTH * 1;
			};
			class rlnt_1_hotkey : RLNT_WH_Hotkey1 {
				idc = 1034;
				x = 0.5 + OFFSET_2 - PXWIDTH * 29.5 * SCALE - PXWIDTH * 1;
				text = "1";
			};

		//BOX 2
			class rlnt_2_bg1 : RLNT_WH_Bg1 {
				idc = 1035;
				x = 0.5 + OFFSET_2 - PXWIDTH * 10 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_bg2 : RLNT_WH_Bg2 {
				idc = 1036;
				x = 0.5 + OFFSET_2 - PXWIDTH * 9.5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_picture : RLNT_WH_Picture {
				idc = 1208;
				x = 0.5 + OFFSET_2 - PXWIDTH * 8.5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_picture_q : RLNT_WH_PictureQ {
				idc = 1209;
				x = 0.5 + OFFSET_2 - PXWIDTH * 5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_name : RLNT_WH_Name {
				idc = 1037;
				x = 0.5 + OFFSET_2 - PXWIDTH * 10 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_hotkey : RLNT_WH_Hotkey1 {
				idc = 1038;
				x = 0.5 + OFFSET_2 - PXWIDTH * 9.5 * SCALE - PXWIDTH * 0;
				text = "2";
			};

		//BOX 3
			class rlnt_3_bg1 : RLNT_WH_Bg1 {
				idc = 1039;
				x = 0.5 + OFFSET_2 + PXWIDTH * 10 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_bg2 : RLNT_WH_Bg2 {
				idc = 1040;
				x = 0.5 + OFFSET_2 + PXWIDTH * 10.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_3_picture : RLNT_WH_Picture {
				idc = 1210;
				x = 0.5 + OFFSET_2 + PXWIDTH * 11.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_picture_q : RLNT_WH_PictureQ {
				idc = 1211;
				x = 0.5 + OFFSET_2 + PXWIDTH * 15 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_name : RLNT_WH_Name {
				idc = 1041;
				x = 0.5 + OFFSET_2 + PXWIDTH * 10 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_amount : RLNT_WH_Amount {
				idc = 1042;
				x = 0.5 + OFFSET_2 + PXWIDTH * 26.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_hotkey : RLNT_WH_Hotkey1 {
				idc = 1043;
				x = 0.5 + OFFSET_2 + PXWIDTH * 10.5 * SCALE + PXWIDTH * 1;
				text = "3";
			};
	};
};

class rlnt_weaponhud_style_3 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_3', _this select 0];";

	class Controls {

		//BOX 1
			class rlnt_1_bg1 : RLNT_WH_Bg1 {
				idc = 1031;
				x = 0.5 + OFFSET_3 - PXWIDTH * 40 * SCALE - PXWIDTH * 1.5;
			};
			class rlnt_1_bg2 : RLNT_WH_Bg2 {
				idc = 1032;
				x = 0.5 + OFFSET_3 - PXWIDTH * 39.5 * SCALE - PXWIDTH * 1.5;
			};
			class rlnt_1_picture : RLNT_WH_Picture {
				idc = 1207;
				x = 0.5 + OFFSET_3 - PXWIDTH * 38.5 * SCALE - PXWIDTH * 1.5;
			};
			class rlnt_1_name : RLNT_WH_Name {
				idc = 1033;
				x = 0.5 + OFFSET_3 - PXWIDTH * 40 * SCALE - PXWIDTH * 1.5;
			};
			class rlnt_1_hotkey : RLNT_WH_Hotkey1 {
				idc = 1034;
				text = "1";
				x = 0.5 + OFFSET_3 - PXWIDTH * 39.5 * SCALE - PXWIDTH * 1.5;
			};

		//BOX 2
			class rlnt_2_bg1 : RLNT_WH_Bg1 {
				idc = 1035;
				x = 0.5 + OFFSET_3 - PXWIDTH * 20 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_bg2 : RLNT_WH_Bg2 {
				idc = 1036;
				x = 0.5 + OFFSET_3 - PXWIDTH * 19.5 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_picture : RLNT_WH_Picture {
				idc = 1208;
				x = 0.5 + OFFSET_3 - PXWIDTH * 18.5 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_picture_q : RLNT_WH_PictureQ {
				idc = 1209;
				x = 0.5 + OFFSET_3 - PXWIDTH * 15 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_name : RLNT_WH_Name {
				idc = 1037;
				x = 0.5 + OFFSET_3 - PXWIDTH * 20 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_hotkey : RLNT_WH_Hotkey1 {
				idc = 1038;
				x = 0.5 + OFFSET_3 - PXWIDTH * 19.5 * SCALE - PXWIDTH * 0.5;
				text = "2";
			};

		//BOX 3
			class rlnt_3_bg1 : RLNT_WH_Bg1 {
				idc = 1039;
				x = 0.5 + OFFSET_3 + PXWIDTH * 0 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_bg2 : RLNT_WH_Bg2 {
				idc = 1040;
				x = 0.5 + OFFSET_3 + PXWIDTH * 0.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_picture : RLNT_WH_Picture {
				idc = 1210;
				x = 0.5 + OFFSET_3 + PXWIDTH * 1.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_picture_q : RLNT_WH_PictureQ {
				idc = 1211;
				x = 0.5 + OFFSET_3 + PXWIDTH * 5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_name : RLNT_WH_Name {
				idc = 1041;
				x = 0.5 + OFFSET_3 + PXWIDTH * 0 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_amount : RLNT_WH_Amount {
				idc = 1042;
				x = 0.5 + OFFSET_3 + PXWIDTH * 16.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_hotkey : RLNT_WH_Hotkey1 {
				idc = 1043;
				x = 0.5 + OFFSET_3 + PXWIDTH * 0.5 * SCALE + PXWIDTH * 0.5;
				text = "3";
			};

		//BOX 4
			class rlnt_4_bg1 : RLNT_WH_Bg1 {
				idc = 1044;
				x = 0.5 + OFFSET_3 + PXWIDTH * 20 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_bg2 : RLNT_WH_Bg2 {
				idc = 1045;
				x = 0.5 + OFFSET_3 + PXWIDTH * 20.5 * SCALE - PXWIDTH * 1.5;
			};
			class rlnt_4_picture : RLNT_WH_Picture {
				idc = 1212;
				x = 0.5 + OFFSET_3 + PXWIDTH * 21.5 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_picture_q : RLNT_WH_PictureQ {
				idc = 1213;
				x = 0.5 + OFFSET_3 + PXWIDTH * 25 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_name : RLNT_WH_Name {
				idc = 1046;
				x = 0.5 + OFFSET_3 + PXWIDTH * 20 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_amount : RLNT_WH_Amount {
				idc = 1047;
				x = 0.5 + OFFSET_3 + PXWIDTH * 36.5 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_hotkey : RLNT_WH_Hotkey1 {
				idc = 1048;
				x = 0.5 + OFFSET_3 + PXWIDTH * 20.5 * SCALE + PXWIDTH * 1.5;
				text = "4";
			};
	};
};

class rlnt_weaponhud_style_4 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_4', _this select 0];";

	class Controls {

		//BOX 1
			class rlnt_1_bg1 : RLNT_WH_Bg1 {
				idc = 1031;
				x = 0.5 + OFFSET_4 - PXWIDTH * 50 * SCALE - PXWIDTH * 2;
			};
			class rlnt_1_bg2 : RLNT_WH_Bg2 {
				idc = 1032;
				x = 0.5 + OFFSET_4 - PXWIDTH * 49.5 * SCALE - PXWIDTH * 2;
			};
			class rlnt_1_picture : RLNT_WH_Picture {
				idc = 1207;
				x = 0.5 + OFFSET_4 - PXWIDTH * 48.5 * SCALE - PXWIDTH * 2;
			};
			class rlnt_1_name : RLNT_WH_Name {
				idc = 1033;
				x = 0.5 + OFFSET_4 - PXWIDTH * 50 * SCALE - PXWIDTH * 2;
			};
			class rlnt_1_hotkey : RLNT_WH_Hotkey1 {
				idc = 1034;
				text = "1";
				x = 0.5 + OFFSET_4 - PXWIDTH * 49.5 * SCALE - PXWIDTH * 2;
			};

		//BOX 2
			class rlnt_2_bg1 : RLNT_WH_Bg1 {
				idc = 1035;
				x = 0.5 + OFFSET_4 - PXWIDTH * 30 * SCALE - PXWIDTH * 1;
			};
			class rlnt_2_bg2 : RLNT_WH_Bg2 {
				idc = 1036;
				x = 0.5 + OFFSET_4 - PXWIDTH * 29.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_2_picture : RLNT_WH_Picture {
				idc = 1208;
				x = 0.5 + OFFSET_4 - PXWIDTH * 28.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_2_name : RLNT_WH_Name {
				idc = 1037;
				x = 0.5 + OFFSET_4 - PXWIDTH * 30 * SCALE - PXWIDTH * 1;
			};
			class rlnt_2_hotkey : RLNT_WH_Hotkey1 {
				idc = 1038;
				x = 0.5 + OFFSET_4 - PXWIDTH * 29.5 * SCALE - PXWIDTH * 1;
				text = "2";
			};

		//BOX 3
			class rlnt_3_bg1 : RLNT_WH_Bg1 {
				idc = 1039;
				x = 0.5 + OFFSET_4 - PXWIDTH * 10 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_bg2 : RLNT_WH_Bg2 {
				idc = 1040;
				x = 0.5 + OFFSET_4 - PXWIDTH * 9.5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_picture : RLNT_WH_Picture {
				idc = 1209;
				x = 0.5 + OFFSET_4 - PXWIDTH * 8.5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_picture_q : RLNT_WH_PictureQ {
				idc = 1210;
				x = 0.5 + OFFSET_4 - PXWIDTH * 5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_name : RLNT_WH_Name {
				idc = 1041;
				x = 0.5 + OFFSET_4 - PXWIDTH * 10 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_hotkey : RLNT_WH_Hotkey1 {
				idc = 1042;
				x = 0.5 + OFFSET_4 - PXWIDTH * 9.5 * SCALE - PXWIDTH * 0;
				text = "3";
			};

		//BOX 4
			class rlnt_4_bg1 : RLNT_WH_Bg1 {
				idc = 1043;
				x = 0.5 + OFFSET_4 + PXWIDTH * 10 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_bg2 : RLNT_WH_Bg2 {
				idc = 1044;
				x = 0.5 + OFFSET_4 + PXWIDTH * 10.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_picture : RLNT_WH_Picture {
				idc = 1211;
				x = 0.5 + OFFSET_4 + PXWIDTH * 11.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_picture_q : RLNT_WH_PictureQ {
				idc = 1212;
				x = 0.5 + OFFSET_4 + PXWIDTH * 15 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_name : RLNT_WH_Name {
				idc = 1045;
				x = 0.5 + OFFSET_4 + PXWIDTH * 10 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_amount : RLNT_WH_Amount {
				idc = 1046;
				x = 0.5 + OFFSET_4 + PXWIDTH * 26.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_hotkey : RLNT_WH_Hotkey1 {
				idc = 1047;
				x = 0.5 + OFFSET_4 + PXWIDTH * 10.5 * SCALE + PXWIDTH * 1;
				text = "4";
			};

		//BOX 5
			class rlnt_5_bg1 : RLNT_WH_Bg1 {
				idc = 1048;
				x = 0.5 + OFFSET_4 + PXWIDTH * 30 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_bg2 : RLNT_WH_Bg2 {
				idc = 1049;
				x = 0.5 + OFFSET_4 + PXWIDTH * 30.5 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_picture : RLNT_WH_Picture {
				idc = 1213;
				x = 0.5 + OFFSET_4 + PXWIDTH * 31.5 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_picture_q : RLNT_WH_PictureQ {
				idc = 1214;
				x = 0.5 + OFFSET_4 + PXWIDTH * 35 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_name : RLNT_WH_Name {
				idc = 1050;
				x = 0.5 + OFFSET_4 + PXWIDTH * 30 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_amount : RLNT_WH_Amount {
				idc = 1051;
				x = 0.5 + OFFSET_4 + PXWIDTH * 46.5 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_hotkey : RLNT_WH_Hotkey1 {
				idc = 1052;
				x = 0.5 + OFFSET_4 + PXWIDTH * 30.5 * SCALE + PXWIDTH * 2;
				text = "5";
			};
	};
};

class rlnt_weaponhud_style_5 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_5', _this select 0];";

	class Controls {

		//BOX 1
			class rlnt_1_bg1 : RLNT_WH_Bg3 {
				idc = 1031;
				x = 0.5 + OFFSET_5 - PXWIDTH * 24 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_1_bg2 : RLNT_WH_Bg2 {
				idc = 1032;
				x = 0.5 + OFFSET_5 - PXWIDTH * 19.5 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_1_bg3 : RLNT_WH_Bg4 {
				idc = 1033;
				x = 0.5 + OFFSET_5 - PXWIDTH * 23.5 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_1_picture : RLNT_WH_Picture {
				idc = 1207;
				x = 0.5 + OFFSET_5 - PXWIDTH * 18.5 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_1_name : RLNT_WH_Name {
				idc = 1034;
				x = 0.5 + OFFSET_5 - PXWIDTH * 24 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_1_hotkey : RLNT_WH_Hotkey2 {
				idc = 1035;
				x = 0.5 + OFFSET_5 - PXWIDTH * 23.5 * SCALE - PXWIDTH * 0.5;
				text = "1";
			};

		//BOX 2
			class rlnt_2_bg1 : RLNT_WH_Bg3 {
				idc = 1036;
				x = 0.5 + OFFSET_5 + PXWIDTH * 0 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_bg2 : RLNT_WH_Bg2 {
				idc = 1037;
				x = 0.5 + OFFSET_5 + PXWIDTH * 4.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_bg3 : RLNT_WH_Bg4 {
				idc = 1038;
				x = 0.5 + OFFSET_5 + PXWIDTH * 0.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_picture : RLNT_WH_Picture {
				idc = 1208;
				x = 0.5 + OFFSET_5 + PXWIDTH * 5.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_picture_q : RLNT_WH_PictureQ {
				idc = 1209;
				x = 0.5 + OFFSET_5 + PXWIDTH * 9 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_name : RLNT_WH_Name {
				idc = 1039;
				x = 0.5 + OFFSET_5 + PXWIDTH * 0 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_2_hotkey : RLNT_WH_Hotkey2 {
				idc = 1040;
				x = 0.5 + OFFSET_5 + PXWIDTH * 0.5 * SCALE + PXWIDTH * 0.5;
				text = "2";
			};
	};
};

class rlnt_weaponhud_style_6 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_6', _this select 0];";

	class Controls {

		//BOX 1
			class rlnt_1_bg1 : RLNT_WH_Bg3 {
				idc = 1031;
				x = 0.5 + OFFSET_6 - PXWIDTH * 36 * SCALE - PXWIDTH * 1;
			};
			class rlnt_1_bg2 : RLNT_WH_Bg2 {
				idc = 1032;
				x = 0.5 + OFFSET_6 - PXWIDTH * 31.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_1_bg3 : RLNT_WH_Bg4 {
				idc = 1033;
				x = 0.5 + OFFSET_6 - PXWIDTH * 35.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_1_picture : RLNT_WH_Picture {
				idc = 1207;
				x = 0.5 + OFFSET_6 - PXWIDTH * 30.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_1_name : RLNT_WH_Name {
				idc = 1034;
				x = 0.5 + OFFSET_6 - PXWIDTH * 36 * SCALE - PXWIDTH * 1;
			};
			class rlnt_1_hotkey : RLNT_WH_Hotkey2 {
				idc = 1035;
				x = 0.5 + OFFSET_6 - PXWIDTH * 35.5 * SCALE - PXWIDTH * 1;
				text = "1";
			};

		//BOX 2
			class rlnt_2_bg1 : RLNT_WH_Bg3 {
				idc = 1036;
				x = 0.5 + OFFSET_6 - PXWIDTH * 12 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_bg2 : RLNT_WH_Bg2 {
				idc = 1037;
				x = 0.5 + OFFSET_6 - PXWIDTH * 7.5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_bg3 : RLNT_WH_Bg4 {
				idc = 1038;
				x = 0.5 + OFFSET_6 - PXWIDTH * 11.5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_picture : RLNT_WH_Picture {
				idc = 1208;
				x = 0.5 + OFFSET_6 - PXWIDTH * 6.5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_picture_q : RLNT_WH_PictureQ {
				idc = 1209;
				x = 0.5 + OFFSET_6 - PXWIDTH * 3 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_name : RLNT_WH_Name {
				idc = 1039;
				x = 0.5 + OFFSET_6 - PXWIDTH * 12 * SCALE - PXWIDTH * 0;
			};
			class rlnt_2_hotkey : RLNT_WH_Hotkey2 {
				idc = 1040;
				x = 0.5 + OFFSET_6 - PXWIDTH * 11.5 * SCALE - PXWIDTH * 0;
				text = "2";
			};

		//BOX 3
			class rlnt_3_bg1 : RLNT_WH_Bg3 {
				idc = 1041;
				x = 0.5 + OFFSET_6 + PXWIDTH * 12 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_bg2 : RLNT_WH_Bg2 {
				idc = 1042;
				x = 0.5 + OFFSET_6 + PXWIDTH * 16.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_bg3 : RLNT_WH_Bg4 {
				idc = 1043;
				x = 0.5 + OFFSET_6 + PXWIDTH * 12.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_picture : RLNT_WH_Picture {
				idc = 1210;
				x = 0.5 + OFFSET_6 + PXWIDTH * 17.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_picture_q : RLNT_WH_PictureQ {
				idc = 1211;
				x = 0.5 + OFFSET_6 + PXWIDTH * 21 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_name : RLNT_WH_Name {
				idc = 1044;
				x = 0.5 + OFFSET_6 + PXWIDTH * 12 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_amount : RLNT_WH_Amount {
				idc = 1045;
				x = 0.5 + OFFSET_6 + PXWIDTH * 32.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_3_hotkey : RLNT_WH_Hotkey2 {
				idc = 1046;
				x = 0.5 + OFFSET_6 + PXWIDTH * 12.5 * SCALE + PXWIDTH * 1;
				text = "3";
			};
	};
};

class rlnt_weaponhud_style_7 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_7', _this select 0];";

	class Controls {

		//BOX 1
			class rlnt_1_bg1 : RLNT_WH_Bg3 {
				idc = 1031;
				x = 0.5 + OFFSET_7 - PXWIDTH * 48 * SCALE - PXWIDTH * 1.5;
			};
			class rlnt_1_bg2 : RLNT_WH_Bg2 {
				idc = 1032;
				x = 0.5 + OFFSET_7 - PXWIDTH * 43.5 * SCALE - PXWIDTH * 1.5;
			};
			class rlnt_1_bg3 : RLNT_WH_Bg4 {
				idc = 1033;
				x = 0.5 + OFFSET_7 - PXWIDTH * 47.5 * SCALE - PXWIDTH * 1.5;
			};
			class rlnt_1_picture : RLNT_WH_Picture {
				idc = 1207;
				x = 0.5 + OFFSET_7 - PXWIDTH * 42.5 * SCALE - PXWIDTH * 1.5;
			};
			class rlnt_1_name : RLNT_WH_Name {
				idc = 1034;
				x = 0.5 + OFFSET_7 - PXWIDTH * 48 * SCALE - PXWIDTH * 1.5;
			};
			class rlnt_1_hotkey : RLNT_WH_Hotkey2 {
				idc = 1035;
				text = "1";
				x = 0.5 + OFFSET_7 - PXWIDTH * 43.5 * SCALE - PXWIDTH * 1.5;
			};

		//BOX 2
			class rlnt_2_bg1 : RLNT_WH_Bg3 {
				idc = 1036;
				x = 0.5 + OFFSET_7 - PXWIDTH * 24 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_bg2 : RLNT_WH_Bg2 {
				idc = 1037;
				x = 0.5 + OFFSET_7 - PXWIDTH * 19.5 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_bg3 : RLNT_WH_Bg4 {
				idc = 1038;
				x = 0.5 + OFFSET_7 - PXWIDTH * 23.5 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_picture : RLNT_WH_Picture {
				idc = 1208;
				x = 0.5 + OFFSET_7 - PXWIDTH * 18.5 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_picture_q : RLNT_WH_PictureQ {
				idc = 1209;
				x = 0.5 + OFFSET_7 - PXWIDTH * 15 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_name : RLNT_WH_Name {
				idc = 1039;
				x = 0.5 + OFFSET_7 - PXWIDTH * 24 * SCALE - PXWIDTH * 0.5;
			};
			class rlnt_2_hotkey : RLNT_WH_Hotkey2 {
				idc = 1040;
				x = 0.5 + OFFSET_7 - PXWIDTH * 23.5 * SCALE - PXWIDTH * 0.5;
				text = "2";
			};

		//BOX 3
			class rlnt_3_bg1 : RLNT_WH_Bg3 {
				idc = 1041;
				x = 0.5 + OFFSET_7 + PXWIDTH * 0 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_bg2 : RLNT_WH_Bg2 {
				idc = 1042;
				x = 0.5 + OFFSET_7 + PXWIDTH * 4.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_bg3 : RLNT_WH_Bg4 {
				idc = 1043;
				x = 0.5 + OFFSET_7 + PXWIDTH * 0.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_picture : RLNT_WH_Picture {
				idc = 1210;
				x = 0.5 + OFFSET_7 + PXWIDTH * 5.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_picture_q : RLNT_WH_PictureQ {
				idc = 1211;
				x = 0.5 + OFFSET_7 + PXWIDTH * 9 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_name : RLNT_WH_Name {
				idc = 1044;
				x = 0.5 + OFFSET_7 + PXWIDTH * 0 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_amount : RLNT_WH_Amount {
				idc = 1045;
				x = 0.5 + OFFSET_7 + PXWIDTH * 20.5 * SCALE + PXWIDTH * 0.5;
			};
			class rlnt_3_hotkey : RLNT_WH_Hotkey2 {
				idc = 1046;
				x = 0.5 + OFFSET_7 + PXWIDTH * 0.5 * SCALE + PXWIDTH * 0.5;
				text = "3";
			};

		//BOX 4
			class rlnt_4_bg1 : RLNT_WH_Bg3 {
				idc = 1047;
				x = 0.5 + OFFSET_7 + PXWIDTH * 24 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_bg2 : RLNT_WH_Bg2 {
				idc = 1048;
				x = 0.5 + OFFSET_7 + PXWIDTH * 28.5 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_bg3 : RLNT_WH_Bg4 {
				idc = 1049;
				x = 0.5 + OFFSET_7 + PXWIDTH * 24.5 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_picture : RLNT_WH_Picture {
				idc = 1212;
				x = 0.5 + OFFSET_7 + PXWIDTH * 29.5 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_picture_q : RLNT_WH_PictureQ {
				idc = 1213;
				x = 0.5 + OFFSET_7 + PXWIDTH * 33 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_name : RLNT_WH_Name {
				idc = 1050;
				x = 0.5 + OFFSET_7 + PXWIDTH * 24 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_amount : RLNT_WH_Amount {
				idc = 1051;
				x = 0.5 + OFFSET_7 + PXWIDTH * 44.5 * SCALE + PXWIDTH * 1.5;
			};
			class rlnt_4_hotkey : RLNT_WH_Hotkey2 {
				idc = 1052;
				x = 0.5 + OFFSET_7 + PXWIDTH * 24.5 * SCALE + PXWIDTH * 1.5;
				text = "4";
			};
	};
};

class rlnt_weaponhud_style_8 {

	idd				= 7211;
	movingenable	= false;
	duration		= 10e10;
	onLoad			= "uiNamespace setVariable ['rlnt_weaponhud_style_8', _this select 0];";

	class Controls {

		//BOX 1
			class rlnt_1_bg1 : RLNT_WH_Bg3 {
				idc = 1031;
				x = 0.5 + OFFSET_8 - PXWIDTH * 60 * SCALE - PXWIDTH * 2;
			};
			class rlnt_1_bg2 : RLNT_WH_Bg2 {
				idc = 1032;
				x = 0.5 + OFFSET_8 - PXWIDTH * 55.5 * SCALE - PXWIDTH * 2;
			};
			class rlnt_1_bg3 : RLNT_WH_Bg4 {
				idc = 1033;
				x = 0.5 + OFFSET_8 - PXWIDTH * 59.5 * SCALE - PXWIDTH * 2;
			};
			class rlnt_1_picture : RLNT_WH_Picture {
				idc = 1207;
				x = 0.5 + OFFSET_8 - PXWIDTH * 54.5 * SCALE - PXWIDTH * 2;
			};
			class rlnt_1_name : RLNT_WH_Name {
				idc = 1034;
				x = 0.5 + OFFSET_8 - PXWIDTH * 60 * SCALE - PXWIDTH * 2;
			};
			class rlnt_1_hotkey : RLNT_WH_Hotkey2 {
				idc = 1035;
				text = "1";
				x = 0.5 + OFFSET_8 - PXWIDTH * 59.5 * SCALE - PXWIDTH * 2;
			};

		//BOX 2
			class rlnt_2_bg1 : RLNT_WH_Bg3 {
				idc = 1036;
				x = 0.5 + OFFSET_8 - PXWIDTH * 36 * SCALE - PXWIDTH * 1;
			};
			class rlnt_2_bg2 : RLNT_WH_Bg2 {
				idc = 1037;
				x = 0.5 + OFFSET_8 - PXWIDTH * 31.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_2_bg3 : RLNT_WH_Bg4 {
				idc = 1038;
				x = 0.5 + OFFSET_8 - PXWIDTH * 35.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_2_picture : RLNT_WH_Picture {
				idc = 1208;
				x = 0.5 + OFFSET_8 - PXWIDTH * 30.5 * SCALE - PXWIDTH * 1;
			};
			class rlnt_2_name : RLNT_WH_Name {
				idc = 1039;
				x = 0.5 + OFFSET_8 - PXWIDTH * 36 * SCALE - PXWIDTH * 1;
			};
			class rlnt_2_hotkey : RLNT_WH_Hotkey2 {
				idc = 1040;
				x = 0.5 + OFFSET_8 - PXWIDTH * 35.5 * SCALE - PXWIDTH * 1;
				text = "2";
			};

		//BOX 3
			class rlnt_3_bg1 : RLNT_WH_Bg3 {
				idc = 1041;
				x = 0.5 + OFFSET_8 - PXWIDTH * 12 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_bg2 : RLNT_WH_Bg2 {
				idc = 1042;
				x = 0.5 + OFFSET_8 - PXWIDTH * 7.5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_bg3 : RLNT_WH_Bg4 {
				idc = 1043;
				x = 0.5 + OFFSET_8 - PXWIDTH * 11.5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_picture : RLNT_WH_Picture {
				idc = 1209;
				x = 0.5 + OFFSET_8 - PXWIDTH * 6.5 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_picture_q : RLNT_WH_PictureQ {
				idc = 1210;
				x = 0.5 + OFFSET_8 - PXWIDTH * 3 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_name : RLNT_WH_Name {
				idc = 1044;
				x = 0.5 + OFFSET_8 - PXWIDTH * 12 * SCALE - PXWIDTH * 0;
			};
			class rlnt_3_hotkey : RLNT_WH_Hotkey2 {
				idc = 1045;
				x = 0.5 + OFFSET_8 - PXWIDTH * 11.5 * SCALE - PXWIDTH * 0;
				text = "3";
			};

		//BOX 4
			class rlnt_4_bg1 : RLNT_WH_Bg3 {
				idc = 1046;
				x = 0.5 + OFFSET_8 + PXWIDTH * 12 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_bg2 : RLNT_WH_Bg2 {
				idc = 1047;
				x = 0.5 + OFFSET_8 + PXWIDTH * 16.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_bg3 : RLNT_WH_Bg4 {
				idc = 1048;
				x = 0.5 + OFFSET_8 + PXWIDTH * 12.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_picture : RLNT_WH_Picture {
				idc = 1211;
				x = 0.5 + OFFSET_8 + PXWIDTH * 17.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_picture_q : RLNT_WH_PictureQ {
				idc = 1212;
				x = 0.5 + OFFSET_8 + PXWIDTH * 21 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_name : RLNT_WH_Name {
				idc = 1049;
				x = 0.5 + OFFSET_8 + PXWIDTH * 12 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_amount : RLNT_WH_Amount {
				idc = 1050;
				x = 0.5 + OFFSET_8 + PXWIDTH * 32.5 * SCALE + PXWIDTH * 1;
			};
			class rlnt_4_hotkey : RLNT_WH_Hotkey2 {
				idc = 1051;
				x = 0.5 + OFFSET_8 + PXWIDTH * 12.5 * SCALE + PXWIDTH * 1;
				text = "4";
			};

		//BOX 5
			class rlnt_5_bg1 : RLNT_WH_Bg3 {
				idc = 1052;
				x = 0.5 + OFFSET_8 + PXWIDTH * 36 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_bg2 : RLNT_WH_Bg2 {
				idc = 1053;
				x = 0.5 + OFFSET_8 + PXWIDTH * 40.5 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_bg3 : RLNT_WH_Bg4 {
				idc = 1054;
				x = 0.5 + OFFSET_8 + PXWIDTH * 36.5 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_picture : RLNT_WH_Picture {
				idc = 1213;
				x = 0.5 + OFFSET_8 + PXWIDTH * 41.5 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_picture_q : RLNT_WH_PictureQ {
				idc = 1214;
				x = 0.5 + OFFSET_8 + PXWIDTH * 45 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_name : RLNT_WH_Name {
				idc = 1055;
				x = 0.5 + OFFSET_8 + PXWIDTH * 36 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_amount : RLNT_WH_Amount {
				idc = 1056;
				x = 0.5 + OFFSET_8 + PXWIDTH * 56.5 * SCALE + PXWIDTH * 2;
			};
			class rlnt_5_hotkey : RLNT_WH_Hotkey2 {
				idc = 1057;
				x = 0.5 + OFFSET_8 + PXWIDTH * 36.5 * SCALE + PXWIDTH * 2;
				text = "5";
			};
	};
};
