/*
File:			RLNT_defines.hpp
Author:			RLNT
Description:	defines for RLNT-Additions
*/

#include "RLNT_macros.hpp"

class RLNT_Main {
	idc = -1;
	type = 0;
	style = 2;
	x = 0;
	y = 0;
	h = 0;
	w = 0;
	text = "";
	font = "Zeppelin32";
	sizeEx = TEXTSIZE;
	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	access = 0;
};

class RLNT_Background : RLNT_Main {
	colorBackground[] = {0,0,0,0.5};
};

class RLNT_Text : RLNT_Main {
	linespacing = 1;
	shadow = 0;
	colorText[] = {1,1,1,1};
};

class RLNT_Structured_Text : RLNT_Main {
	type = 13;
};

class RLNT_Picture : RLNT_Main {
	style = 48;
	colorText[] = {1,1,1,1};
};

class RLNT_Frame : RLNT_Main {
	style = 64;
	colorText[] = {1,1,1,1};
};
