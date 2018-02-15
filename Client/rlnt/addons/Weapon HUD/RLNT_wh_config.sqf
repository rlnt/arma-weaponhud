/*
File:			RLNT_wh_config.sqf
Author:			RLNT
Description:	config file for Weapon HUD
*/
#include "\ca\editor\Data\Scripts\dikCodes.h"


/*
Explanation for this script:
I often saw people requesting something like this on the forum
so I decided to make a Weapon HUD. Simply said, it displays
your current weapons with given hotkeys. But this is already the
second version of my script, that's why there are a ton of more
options you can customize in this file.
Read more on the Epoch-Forum-Topic:
http://bit.ly/2r6yDeH
*/

/*
Explanation for the config:
In this config, you can customize the Weapon HUD to your liking.
Options such as colors, texts and more are all configurable
and made to fit your personal preferences. Currently all options
have the default state which you can just use without even
looking at them. But you should take a peek if you want to give
your players a better game experience.
Most things are automatically detected by the script itself!
Things like how many boxes you need for your Weapon HUD to
display everything. So don't be afraid that you could mess
something up. There are also a lot of error-prevention-mechanics
included so you will get notified if you have to edit something.
*/


////////////////////////////////////////////////////////////
////	Main-Options:									////
////	These are the basic options for the Weapon HUD.	////
////	Everything you need to know is explained		////
////	above the specific option.						////
////////////////////////////////////////////////////////////
/*
		This is the default state of the Weapon HUD.
		true	-> Weapon HUD is activated by default
		false	-> Weapon HUD is deactivated by default
		You can also set a hotkey to toggle the Weapon HUD.
*/
rlnt_wh_defaultState = true;  /* default: true */

/*
		This is the hotkey you can toggle the Weapon HUD with.
		It can also be a key combination.
		You need to write the DIK-Key-Code as an array!
		That means you have to place it in []!
		To disable the key, write nil.
		Here you can find the Key-Codes: http://bit.ly/2mxDcd4

		1 hotkey:	rlnt_wh_toggleKey = [DIK_TAB];
		key combo:	rlnt_wh_toggleKey = [DIK_TAB,DIK_LSHIFT];
		disabled:	rlnt_wh_toggleKey = nil;
*/
rlnt_wh_toggleKey = [DIK_TAB];  /* default: [DIK_TAB] */

/*
		This is the refresh rate of the Weapon HUD.
		It just tells the script how often (in seconds) the HUD
		has to refresh to show the newest images and information.
		Keep in mind that lower amounts might be nice for the
		look because the weapon images are always up-to-date but
		also cost the clients more performance.
		If you are not sure, keep it default.
*/
rlnt_wh_refreshRate = 3;  /* default: 3 */

/*
		This is the notification style of the Weapon HUD.
		0	-> disabled, no notifications will appear
		1	-> RLNT Update Panel (only if you have it installed)
		2	-> Systemchat (looks like chat messages)
		3	-> cutText (looks like mission messages)
		4	-> DayZ Rolling Message (Epoch-Default-System)
		Notifications will be shown everytime you toggle
		the Weapon HUD or you use any of the quick-slot-items.
*/
rlnt_wh_nfcStyle = 4;  /* default: 4 */


////////////////////////////////////////////////////////////
////	Design-Options:									////
////	These are the design options for the			////
////	Weapon HUD.										////
////	Everything you need to know is explained		////
////	above the specific option.						////
////////////////////////////////////////////////////////////
/*
		This is the style of the hotkey display method.
		By default hotkeys are shown over the images but
		since many users liked the old design with seperated
		hotkeys you have an option to choose your favorite
		style.
		true	-> old style
		false	-> new style
*/
rlnt_wh_oldHotkeys = false;  /* default: false */

/*
		This is the font color of the Weapon HUD.
		All texts that are displayed except the hotkey text
		on the Weapon HUD will have this color!
		It has to be in a RGBA color array!
		I recommend using any html color picker and then
		convert it on this site: http://bit.ly/2f543cr
		The format is [red,green,blue,alpha]!
*/
rlnt_wh_fontColor = [1,1,1,1];  /* default: 1,1,1,1 (white) */

/*
		This is the background color of the Weapon HUD.
		All boxes that are displayed on the Weapon HUD
		will have this color!
		It has to be in a RGBA color array!
		I recommend using any html color picker and then
		convert it on this site: http://bit.ly/2f543cr
		The format is [red,green,blue,alpha]!
*/
rlnt_wh_bgColor = [0,0,0,0.5];  /* default: 0,0,0,0.5 (half-transparent black) */

/*
		This is the hotkey font color of the Weapon HUD.
		All hotkey texts in the boxes will have this color!
		It has to be in a RGBA color array!
		I recommend using any html color picker and then
		convert it on this site: http://bit.ly/2f543cr
		The format is [red,green,blue,alpha]!
*/
rlnt_wh_hkColor = [1,1,1,0.7];  /* default: 1,1,1,0.7 (quite-transparent white) */


////////////////////////////////////////////////////////////
////	Update-Panel-Options:							////
////	If you chose option 1 for rlnt_wh_nfcStyle,		////
////	these options might be interesting for you.		////
////	If you didn't choose option 1, you can skip		////
////	the next part until Slot-Options.				////
////	KEEP IN MIND, YOU HAVE TO INSTALL RLNT UPDATE   ////
////	PANEL IN ORDER TO USE THIS NFC STYLE!!!			////
////	http://bit.ly/2D9qoTM							////
////////////////////////////////////////////////////////////
/*
		This is the style of the Update Panel.
		For more information, watch the Update Panel Epoch
		Forum Topic or the Github Repository!
*/
rlnt_whup_style = 1;  /* default: 1 */

/*
		This is the tag of the Update Panel.
		The tag is shown above each notification of the
		Weapon HUD script. I recommend you use something
		like your server name.
		Max. characters are 12!
*/
rlnt_whup_tag = "Weapon HUD:";  /* default: Weapon HUD: */

/*
		This is the text color of the Update Panel.
		For more information, watch the Update Panel Epoch
		Forum Topic or the Github Repository!
*/
rlnt_whup_fColor = [1,1,1,1];  /* default: 1,1,1,1 (white) */

/*
		This is the background color of the Update Panel.
		For more information, watch the Update Panel Epoch
		Forum Topic or the Github Repository!
*/
rlnt_whup_bgColor = [0,0.2,0,0.7];  /* default: 0,0.2,0,0.7 (dark green) */


////////////////////////////////////////////////////////////
////	Slot-Options:									////
////	These are the more advanced options for the		////
////	Weapon HUD. You can define the quick-slot-items	////
////	and their hotkeys. You can also decide whether	////
////	extended info should be shown or not.			////
////////////////////////////////////////////////////////////
/*
		This is the text of the weapons above the boxes.
		true	-> Show weapon names above the boxes
		false	-> Hide weapon names above the boxes
		They are automatically localized and self-resizing.
*/
rlnt_wh_showWeaponNames = true;  /* default: true */

/*
		This is the first quick-slot-item.
		You always have to write the classname. If you
		aren't sure what to choose or how to write it, you
		can take a look in the rlnt_wh_itemList array.
		There you can find all items that are currently
		supported by the script.
		To disable item 1, write nil.

		any item:	rlnt_wh_item1 = "ItemClassname";
		disabled:	rlnt_wh_item1 = nil;
*/
rlnt_wh_item1 = "ItemBandage";  /* default: ItemBandage */

/*
		This is the second quick-slot-item.
		You always have to write the classname. If you
		aren't sure what to choose or how to write it, you
		can take a look in the rlnt_wh_itemList array.
		There you can find all items that are currently
		supported by the script.
		To disable item 2, write nil.

		any item:	rlnt_wh_item2 = "ItemClassname";
		disabled:	rlnt_wh_item2 = nil;
*/
rlnt_wh_item2 = "ItemPainkiller";  /* default: ItemPainkiller */

/*
		This is the hotkey for Quick-Slot-Item 1.
		It can also be a key combination.
		You need to write the DIK-Key-Code as an array!
		That means you have to place it in []!
		To disable the key, write nil.
		Here you can find the Key-Codes: http://bit.ly/2mxDcd4

		1 hotkey:	rlnt_wh_item1_key = [DIK_4];
		key combo:	rlnt_wh_item1_key = [DIK_4,DIK_LSHIFT];
		disabled:	rlnt_wh_item1_key = nil;
*/
rlnt_wh_item1_key = [DIK_4];  /* default: DIK_4 */

/*
		This is the hotkey for Quick-Slot-Item 2.
		It can also be a key combination.
		You need to write the DIK-Key-Code as an array!
		That means you have to place it in []!
		To disable the key, write nil.
		Here you can find the Key-Codes: http://bit.ly/2mxDcd4

		1 hotkey:	rlnt_wh_item2_key = [DIK_5];
		key combo:	rlnt_wh_item2_key = [DIK_4,DIK_LSHIFT];
		disabled:	rlnt_wh_item2_key = nil;
*/
rlnt_wh_item2_key = [DIK_5];  /* default: DIK_5 */

/*
		This is the name of the first hotkey.
		Sadly, I can't let ArmA autodetect the name of the
		key you chose so you have to enter it manually.
		Each hotkey is shown over the corresponding box
		so keep it short!
*/
rlnt_wh_item1_keyName = "4";  /* default: 4 */

/*
		This is the name of the second hotkey.
		Sadly, I can't let ArmA autodetect the name of the
		key you chose so you have to enter it manually.
		Each hotkey is shown over the corresponding box
		so keep it short!
*/
rlnt_wh_item2_keyName = "5";  /* default: 5 */

/*
		This is the name of the items above the boxes.
		true	-> Show item names above the boxes
		false	-> Hide item names above the boxes
		They are automatically localized and self-resizing.
*/
rlnt_wh_showItemNames = true;  /* default: true */

/*
		This is the item amount in the boxes.
		true	-> Show item amount in the boxes
		false	-> Hide item amount in the boxes
		If you have none of the items left, the counter
		automatically shows a 0.
*/
rlnt_wh_showItemAmount = true;  /* default: true */


////////////////////////////////////////////////////////////
////	Other Options:									////
////	These are a little more specific, so there is	////
////	no real category. Each option needs its own		////
////	explanation so read carefully!					////
////////////////////////////////////////////////////////////
/*
		This is the blood setting array.
		You might have seen this somewhere before and
		that's no wonder. You can also set an equal option
		in the Epoch-Configs. This option is only
		necessary for you if you have the bloodbag as
		one of your quick-slot-items. The script I made
		for the blood bags is pretty smart but needs some
		values to work properly. If you don't know what
		to choose after reading, leave it default.

		The first value in the array is the duration (in
		seconds) you need to inject the whole blood bag
		to yourself. Minimum amount is 4 seconds because
		that's Epoch's default. Maximum is 120 seconds
		which is 2 minutes (would not recommend this).
		The script automatically detects the configurated
		time and gives you blood in portions. So if you set
		the time to 60 seconds but abort after 20 seconds
		you will only get 1/3 of the blood you would
		normally get. The blood bag is lost anyways.
		Please think carefully about the value you choose!

		The second value is the amount of blood you get
		from a blood bag. Minimum is 500 and maximum is
		12000. If you want Epoch's default value or the value
		you already set in your Epoch config, you can also
		write -1.

		The only value the script takes from Epoch is the
		cooldown between blood bags (Don't beg for this
		option, I will not include it!).
*/
rlnt_wh_bloodSettings = [4,-1];  /* default: 4,-1 */

/*
		This is the small weapon array.
		I guess this needs some explanation. For auto-
		resizing of the images, I needed to adjust the
		display and because some weapons are smaller
		and some are bigger, I needed to create this
		array. Basically this includes all weapons that
		are small or better said squarish. So they don't
		match the size of a box a normal assault rifle
		would have. All weapons in this array take a
		smaller box automatically so the image doesn't
		look stretched and ugly.
		I made this a configurable array so you can
		add weapons to it in case you added more
		weapons to your game or use others than these.
		If you have absolutly no clue what I am
		talking about, leave it default because I already
		included all Epoch-Weapons.
*/
rlnt_wh_smallWeapons = [
	"Makarov","Makarov_DZ","MakarovSD","Makarov_SD_DZ",
	"Revolver_DZ","Revolver_EP1","Revolver_Gold_EP1",
	"Colt1911","M1911_DZ",
	"Glock17_EP1","G17_DZ","G17_FL_DZ","G17_MFL_DZ","G17_SD_DZ","G17_SD_FL_DZ","G17_SD_MFL_DZ",
	"UZI_EP1","UZI_SD_EP1","PDW_DZ",
	"M9","M9_DZ","M9SD","M9_SD_DZ",
	"Sa61_EP1"
];

/*
		This is the item array.
		This array contains all items, you are
		currently able to use as quick-slot-items.
		They are written down in their ItemID which is
		really important. If you feel like adding one
		yourself, feel free to do so but keep in mind
		that you will also have to write a script for
		it and that's a pain in the as*.
		Just leave this array as it is and everything
		will be fine.
*/
rlnt_wh_itemList = [
	"ItemAntibiotic",
	"ItemBandage",
	"ItemBloodbag",
	"ItemMorphine",
	"ItemPainkiller"
];

/*
		This is the debug option for devs.
		The option lets you enable the debug mode of my
		script which I would highly recommend for
		only those of you who know what they are
		doing. Enabling this will cause a lot of
		info in your RPT and a ton of traffic
		on your server.
		If you have a bug on your server and you
		think it could possibly come from this
		script, you can use this to find an error.
		Don't enable this unless you know what
		you are doing or someone of the more experienced
		guys asked you to do so.
*/
rlnt_wh_debug = false;  /* default: false */


/*	########################################
	##########  Don't edit below  ##########
	########################################
*/

/* SET BLOOD INJECTION AMOUNT IF NOT SET */
if (rlnt_wh_bloodSettings select 1 == -1) then {
	rlnt_wh_bloodSettings set[1, DZE_selfTransfuse_Values select 0];
};

/* TOGGLE LOOP */
if (rlnt_wh_defaultState) then {
	rlnt_wh_doLoop = true;
} else {
	rlnt_wh_doLoop = false;
};

/* DEBUG */
["file","WH","Weapon HUD config"] call RLNT_postDebug;
