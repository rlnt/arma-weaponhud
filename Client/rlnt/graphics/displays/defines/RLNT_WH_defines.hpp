/*
File:			RLNT_WH_defines.hpp
Author:			Relentless
Description:	Defines for Weapon HUD
*/

#include "RLNT_WH_macros.hpp"
#include "RLNT_macros.hpp"

class RLNT_WH_Bg1 : RLNT_Background {
	y = WINDOW_BOTTOM - PXHEIGHT * 15 * SCALE - PXHEIGHT * 2;
	w = PXWIDTH * 20 * SCALE;
	h = PXHEIGHT * 15 * SCALE;
};

class RLNT_WH_Bg2 : RLNT_Background {
	y = WINDOW_BOTTOM - PXHEIGHT * 14 * SCALE - PXHEIGHT * 2;
	w = PXWIDTH * 19 * SCALE;
	h = PXHEIGHT * 13 * SCALE;
};

class RLNT_WH_Name : RLNT_Text {
	y = WINDOW_BOTTOM - PXHEIGHT * 19 * SCALE - PXHEIGHT * 3;
	w = PXWIDTH * 20 * SCALE;
	h = PXHEIGHT * 4 * SCALE;
	sizeEx = TEXTSIZE * SCALE;
	shadow = 1;
};

class RLNT_WH_Hotkey : RLNT_Text {
	y = WINDOW_BOTTOM - PXHEIGHT * 14 * SCALE - PXHEIGHT * 2;
	w = PXWIDTH * 19 * SCALE;
	h = PXHEIGHT * 13 * SCALE;
	sizeEx = TEXTSIZE * 4 * SCALE;
	colorText[] = {1,1,1,0.8};
	shadow = 1;
};

class RLNT_WH_Amount : RLNT_Text {
	style = 1;
	y = WINDOW_BOTTOM - PXHEIGHT * 14 * SCALE - PXHEIGHT * 2;
	w = PXWIDTH * 3 * SCALE;
	h = PXHEIGHT * 4 * SCALE;
	sizeEx = TEXTSIZE * 1.5 * SCALE;
	shadow = 1;
};

class RLNT_WH_Picture : RLNT_Picture {
	y = WINDOW_BOTTOM - PXHEIGHT * 13 * SCALE - PXHEIGHT * 2;
	w = PXWIDTH * 17 * SCALE;
	h = PXHEIGHT * 11 * SCALE;
};

class RLNT_WH_PictureQ : RLNT_Picture {
	y = WINDOW_BOTTOM - PXHEIGHT * 13 * SCALE - PXHEIGHT * 2;
	w = PXWIDTH * 10 * SCALE;
	h = PXHEIGHT * 11 * SCALE;
};
