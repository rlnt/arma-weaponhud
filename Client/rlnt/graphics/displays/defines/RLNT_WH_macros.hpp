/*
File:			RLNT_WH_macros.hpp
Author:			RLNT
Description:	macros for Weapon HUD
*/

#define SCALE 			1
#define OFFSET 			0

#define PXWIDTH			safeZoneW * 0.004375
#define PXHEIGHT		safeZoneH * 0.00555556
#define WINDOW_BOTTOM	safeZoneY + safeZoneH

#define OFFSET_1 		(safeZoneW / 2 - PXWIDTH * 1.5 + 1 * PXWIDTH * 20 * SCALE) * OFFSET
#define OFFSET_2 		(safeZoneW / 2 - PXWIDTH * 2 + 1.5 * PXWIDTH * 20 * SCALE) * OFFSET
#define OFFSET_3 		(safeZoneW / 2 - PXWIDTH * 2.5 + 2 * PXWIDTH * 20 * SCALE) * OFFSET
#define OFFSET_4 		(safeZoneW / 2 - PXWIDTH * 3 + 2.5 * PXWIDTH * 20 * SCALE) * OFFSET
#define OFFSET_5 		(safeZoneW / 2 - PXWIDTH * 1.5 + 1 * PXWIDTH * 24 * SCALE) * OFFSET
#define OFFSET_6 		(safeZoneW / 2 - PXWIDTH * 2 + 1.5 * PXWIDTH * 24 * SCALE) * OFFSET
#define OFFSET_7 		(safeZoneW / 2 - PXWIDTH * 2.5 + 2 * PXWIDTH * 24 * SCALE) * OFFSET
#define OFFSET_8 		(safeZoneW / 2 - PXWIDTH * 3 + 2.5 * PXWIDTH * 24 * SCALE) * OFFSET
