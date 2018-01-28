 # RLNT WEAPON HUD

 <br>


 <a name="custominstallation"></a>

 ## CUSTOM INSTALL INSTRUCTIONS
 You should only follow these instructions if you **have any other of our scripts** installed!<br>
 In case you don't have addons/scripts that start with RLNT please follow these instructions instead: [fresh install instructions][freshinstallation]!<br>
 This instructions are noob-friendly; read everything carefully! There are many links to guide you through the right steps. Sometimes you also skip some steps to match the right oder again. Don't be confused about that.


<a name="customclient"></a>

## CLIENT INSTALLATION

1. DOWNLOAD:
	- [Download the latest Custom-Release.zip][latest]!
<br>

2. FILE-MANAGEMENT:
	- Extract the *Custom-Release.zip* and open it.
	- **In there** open the *Client* folder.
	- Now move the *rlnt* folder into your *mission.pbo*.
		>*mission.pbo* is just a placeholder. Your mission is called something like *Dayz_Epoch_11.Chernarus* depending on the map you're playing on. It's the same directory where your *init.sqf* and *description.ext* is stored in.

	- Next move the *stringTable.xml* into your *mission.pbo*.
		>The *stringTable.xml* has to be in the root of the *mission.pbo*. That's where the *init.sqf* is located. If you already have an existing *stringTable.xml* you need to merge them!

	- Go to **"mission.pbo/rlnt/addons"**, open the *RLNT_init.sqf* and paste the following line **below** the *FILE EXECUTION* part:
		```sqf
		call compile preprocessFileLineNumbers "rlnt\addons\Weapon HUD\RLNT_wh_init.sqf";	//Weapon HUD Init
		```
	- It should look something like that (could look different depending on the addons/scripts you have installed):
		```sqf
		/*  FILE EXECUTION  */
		call compile preprocessFileLineNumbers "rlnt\addons\RLNT_compiles.sqf";				//Compiles
		call compile preprocessFileLineNumbers "rlnt\addons\Update Panel\RLNT_up_init.sqf";	//Update HUD Init
		call compile preprocessFileLineNumbers "rlnt\addons\Weapon HUD\RLNT_wh_init.sqf";	//Weapon HUD Init
		```
	- Now open the *RLNT_compiles.sqf* and paste the following lines into the *!isDedicated && hasInterface* block:
		```sqf
		//Weapon HUD
		RLNT_wh_postDebug		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_debug.sqf";
		RLNT_wh_errorCheck		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_error.sqf";
		RLNT_wh_notifyUser		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_notify.sqf";
		RLNT_wh_toggleHUD		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_toggle.sqf";
		RLNT_wh_startSetup		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_setup.sqf";
		RLNT_wh_checkUpdate		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_update.sqf";
		RLNT_wh_switchInfo		= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_switch.sqf";
		RLNT_wh_selectAction	= compile preprocessFileLineNumbers "rlnt\functions\RLNT_wh_action.sqf";
		```

	- Check if you already have a custom *compiles.sqf* or not.
		- If you **have a custom** *compiles.sqf* follow [these steps](#customcompiles)!
		- If you **don't have a custom** *compiles.sqf* just continue reading!
<br>

3. NO CUSTOM *COMPILES.SQF*:
	- First open the **downloaded files** and place the **"Client/dayz_code/init/compiles.sqf"** in your **"mission.pbo/dayz_code/init"** folder.
	- Now open your *init.sqf* and find the following line:
		```sqf
		call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
		```
	- Paste this line **below**:
		```sqf
		call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";
		```
	- Continue with [these steps](#keyboard)!
<br>

<a name="customcompiles"></a>

3. CUSTOM *COMPILES.SQF*:
	- Check if you already have a custom *keyboard.sqf* or not.
		- If you **have a custom** *keyboard.sqf* follow [these steps](#customkeyboard)!
		- If you **don't have a custom** *keyboard.sqf* just continue reading!
<br>

4. NO CUSTOM _KEYBOARD.SQF_:
	- First open the **downloaded files** and place the **"Client/dayz_code/compile/keyboard.sqf"** into your **"mission.pbo/dayz_code/compile"** folder.
		>create the directory if you don't have it yet. This simply means that you didn't use the Epoch file structure for your custom _compiles.sqf_ but that's not a serious problem.

	- Now open your **custom** _compiles.sqf_ and add the following line **below** the _!isDedicated_ block:
		```sqf
		DZ_KeyDown_EH = compile preprocessFileLineNumbers "dayz_code\compile\keyboard.sqf";
		```
		>if you have a line that already defines the _keyboard.sqf_ you are probably one of those guys that copy the whole _compiles.sqf_ to their mission. If you did that you have to replace the original _keyboard.sqf_ line instead!

	- Continue with [here](#clientdone)!
<br>

<a name="customkeyboard"></a>

4. CUSTOM _KEYBOARD.SQF_:
	- First open your **custom** _keyboard.sqf_ and find the following codeblocks:
		```sqf
		_rifle = {
			2 call dz_fn_switchWeapon;
	        _handled = true;
	    };
	    _pistol = {
			3 call dz_fn_switchWeapon;
	        _handled = true;
	    };
	    _melee = { // Also works for rifle on back if DZE_TwoPrimaries = 2;
			4 call dz_fn_switchWeapon;
	        _handled = true;
	    };
	    _throwable = { // select next non empty throwable weapon
	        if (vehicle player == player) then {
	            _ammo_throwable = [];
	            _muzzles_throwable = [];
	            _weapon_throwable = [];
	            {
	                _weapon = _x;
	                _muzzles = getArray(configFile >> "cfgWeapons" >> _weapon >> "muzzles");
	                if (count _muzzles == 0) then { _muzzles = [_weapon ]; };
	                {
	                    _muzz = _x;
	                    {
	                        if (_x in magazines player) then {
	                            _ammo_throwable set [ count _ammo_throwable, getText(configFile >> "cfgMagazines" >> _x >> "ammo") ];
	                            _muzzles_throwable set [ count _muzzles_throwable, _muzz ];
	                            _weapon_throwable set [ count _weapon_throwable, _weapon ];
	                        };                      
	                    } forEach getArray(configFile >> "cfgWeapons" >> _weapon >> _muzz >> "magazines");
	                } forEach _muzzles;
	            } forEach ["Throw"];

	            _magCount = count _ammo_throwable;
	            if (_magCount > 0) then {
	                if (isNil "KB_CurrentThrowable") then { KB_CurrentThrowable = -1; };
	                _currentAmmo = (weaponState player) select 3;       
	                _idx = _ammo_throwable find _currentAmmo;
	                if (_idx >= 0) then { KB_CurrentThrowable = _idx; };
	                KB_CurrentThrowable = (KB_CurrentThrowable + 1) mod _magCount;
	                player selectWeapon (_muzzles_throwable select KB_CurrentThrowable);
	                _handled = true;
	            };
	        };
		};
		```
	- **Replace** them with this code:
		```sqf
		_whToggle = {
			call RLNT_wh_toggleHUD;
			_handled = true;
		};
		_whPrimary = {
			2 call dz_fn_switchWeapon;
			_handled = true;
		};
		_whSecondary = {
			4 call dz_fn_switchWeapon;
			_handled = true;
		};
		_whHandgun = {
			3 call dz_fn_switchWeapon;
			_handled = true;
		};
		_whItem1 = {
			rlnt_wh_item1 call RLNT_wh_selectAction;
			_handled = true;
		};
		_whItem2 = {
			rlnt_wh_item2 call RLNT_wh_selectAction;
			_handled = true;
		};
		```
	- After you have done this find the following lines and **remove** them:
		```sqf
		[[DIK_1], _rifle] call _addArray;
		[[DIK_2], _pistol] call _addArray;
		[[DIK_3], _melee] call _addArray;
		//[[DIK_4], _throwable] call _addArray;
		```
	- Now find this line:
		```sqf
		diag_log "keyboard_keys reset";
		```
	- And paste the following code **above** it:
		```sqf
		if !(isNil "rlnt_wh_toggleKey") then {
			[rlnt_wh_toggleKey, _whToggle] call _addArray;
		};

		if (DZE_TwoPrimaries == 2) then {
			[[DIK_1], _whPrimary] call _addArray;
			[[DIK_2], _whSecondary] call _addArray;
			[[DIK_3], _whHandgun] call _addArray;
		} else {
			[[DIK_1], _whPrimary] call _addArray;
			[[DIK_2], _whHandgun] call _addArray;
			[[DIK_3], _whSecondary] call _addArray;
		};

		if (!(isNil "rlnt_wh_item1_key") && (rlnt_wh_itemAmount == 1)) then {
			[rlnt_wh_item1_key, _whItem1] call _addArray;
		};

		if (!(isNil "rlnt_wh_item1_key") && !(isNil "rlnt_wh_item2_key") && (rlnt_wh_itemAmount == 2)) then {
			[rlnt_wh_item1_key, _whItem1] call _addArray;
			[rlnt_wh_item2_key, _whItem2] call _addArray;
		};
		```
<br>

<a name="keyboard"></a>

4. *KEYBOARD.SQF* FILE:
	- Open the **downloaded files** and place the **"Client/dayz_code/compile/keyboard.sqf"** into your **"mission.pbo/dayz_code/compile"** folder.
		>create the directory if you don't have it yet. This simply means that you didn't use the Epoch file structure for your custom _compiles.sqf_ but that's not a serious problem.

<br>

<a name="clientdone"></a>

**You are done with the client installation!**<br>
- Check if you have infiSTAR.
	- If you have infiSTAR [check the bottom part](#custominfistar)!
	- If you don't have infiSTAR you are done! Now go back to the [main post][mainpost]!
<br>

<a name="custominfistar"></a>

## INFISTAR INSTALLATION

- WHITELISTING:
	- Open your infiSTAR _AHconfig.sqf_ and add the following dialog number to your _ALLOWED_Dialogs_:
		```
		7211
		```
	- **That's it!** You should now go back to the [main post][mainpost] too!

<!-- Some ASCII art to keep the guide active -->
<br><br><br><br><br><br><br><br><br><br>
```
################################################################################################################
################################################################################################################
###############++++++++++++++++++#########################################++++++++##############################
#############+++'''''''''''''''''+++++++################################++''''''''##############################
############++';;;;;;;;;;;;;;;;;;;;;''''++#############################+'';;;;;;;;##############################
############+'::,,,,,,,,,,,,,,,,,,,,:::;;''+##########################++;:,,,,,,,,##############################
###########+';:..````````````````......,,::;'#########################+';,.```````##############################
###########+';,.`                 ``````..,,:;########################+':,``     `##############################
###########+';,`                        ```.,:;#######################+':.`       ##############################
###########+';,`                           ``.,+######################+':.`       ##############################
###########+';,`                             `.,######################+':.`       ##############################
###########+';,`                              `.,#####################+':.`       ##############################
###########+';,`                               `.#####################+':.`       ##############################
###########+';,`                                `:####################+':.`       ##############################
###########+';,`       :#########:```           `.####################+':.`       ##############################
###########+';,`       :###########+.``          `####################+':.`       ##############################
###########+';,`       :############+,.``        `'###################+':.`       ##############################
###########+';,`       :#############',.``        ,++++++++++++++++###+':.`       ##############################
###########+';,`       :##############;,.`        `++++++++++++++++++#+':.`       ##############################
###########+';,`       :##############';,.`       `++++++++++++++++++#+':.`       ##############################
###########+';,`       :############+++':,`       `++++++++++++++++++#+':.`       ##############################
###########+';,`       :##########+++++';,.`      `++++++++++++++++++#+':.`       ##############################
###########+';,`       :########++++++#+;:.`       ++++++++++++++++++#+':.`       ##############################
###########+';,`       :######++++++++#+':.`       ++++++++++++++++++#+':.`       ++############################
###########+';,`       :####+++++++++##+':.`      `++++++++++++++++++#+':.`       +++###########################
###########+';,`       :###++++++++++##+;,.`      ;++++++++++++++++++#+':.`       +++++#########################
###########+';,`       :#+++++++++++##+';,`       +++++++++++++++++++#+':.`       ++++++########################
###########+';,`       :++++++++#####++;:.`       +++++++++++++++++++#+':.`       ++++++++######################
###########+';,`       `.,;'+####++++';:,.`      `+++++++++++++++++++#+':.`       +++++++++#####################
###########+';,`       `.,:''++++'''';:,.`       ++++++++++++++++++++#+':.`       ++++++++++####################
###########+';,`        `.,:;;;;;;;::,..`        ++++++++++++++++++++#+':.`       ++++++++++++##################
###########+';,`        ``.,,,,,,,,...``        +++++++++++++++++++++#+':.`       +++++++++++++#################
###########+';,`         ```.....`````         ;+++++++++++++++++++++#+':.`       ++++++++++++++################
###########+';,`            ````              `++++++++++++++++++++++#+':.`       +++++++++++++++###############
###########+';,`                             `+++++++++++++++++++++++#+':.`       ++++++++++++++++##############
###########+';,`                            :++++++++++++++++++++++++#+':.`       +++++++++++++++++#############
###########+';,`                           ++++++++++++++++++++++++++#+':.`       +++++++++++++++++#############
###########+';,`                         '+++++++++++++++++++++++++++#+':.`       ++++++++++++++++++############
###########+';,`                       ++++++++++++++++++++++++++++++#+':.`       +++++++++++++++++++###########
###########+';,`                      +++++++++++++++++++++++++++++++#+':.`       ++++++++++++++++++++##########
###########+';,`       ,+              ++++++++++++++++++++++++++++++#+':.`       ++++++++++++++++++++##########
###########+';,`       :+````          ++++++++++++++++++++++++++++++#+':.`       +++++++++++++++++++++#########
###########+';,`       :++..``         `+++++++++++++++++++++++++++++#+':.`       ++++++++++++++++++++++########
#########+#+';,`       :++:,,.`        `'++++++++++++++++++++++++++++#+':.`       ++++++++++++++++++++++########
#########+#+';,`       :+++::,`        `.++++++++++++++++++++++++++++#+':.`       +++++++++++++++++++++++#######
########++#+';,`       :+++';,.`        `'+++++++++++++++++++++++++++#+':.`       +++++++++++++++++++++++#######
########++#+';,`       :++++':,`        `.+++++++++++++++++++++++++++#+':.`       ++++++++++++++++++++++++######
#######+++#+';,`       :+++++;:.`        `;++++++++++++++++++++++++++#+':.`       ++++++++++++++++++++++++######
#######+++#+';,`       :+++++';,``       `.++++++++++++++++++++++++++#+':.`       +++++++++++++++++++++++++#####
######++++#+';,`       :++++++;:.`        `:+++++++++++++++++++++++++#+':.`       +++++++++++++++++++++++++#####
######++++#+';,`       :++++++';,.`       `.+++++++++++++++++++++++++#+':.`       ++++++++++++++++++++++++++####
#####+++++#+';,`       :+++++++;:.`        `,++++++++++++++++++++++++#+':.`       ++++++++++++++++++++++++++####
#####+++++#+';,`       :+++++++';,.`       `.++++++++++++++++++++++++#+':.`       +++++++++++++++++++++++++++###
#####+++++#+';,`       :++++++++':.`        `,+++++++++++++++++++++++#+':.`       +++++++++++++++++++++++++++###
####++++++#+';,`       :++++++++';,.`       `.+++++++++++++++++++++++#+':.`       +++++++++++++++++++++++++++###
####++++++#+';,`       :+++++++++':.`        `.++++++++++++++++++++++#+':.`       ++++++++++++++++++++++++++++##
####++++++#+';,`       :+++++++++';,.`       `.++++++++++++++++++++++#+':.`       ++++++++++++++++++++++++++++##
###+++++++#+';,`       :++++++++++':.`        `.+++++++++++++++++++++#+':.`       `.:;++#############+++++++++##
###+++++++#+';,`       :++++++++++';,.`       `.+++++++++++++++++++++#+':.`       `.,;''++++++++++++++++++++++##
###+++++++#+';,`       :+++++++++++':,`        `.++++++++++++++++++++#+':.`       ``.:;;;;;;;;;;;;;;;++++++++++#
###+++++++#+';,`       :+++++++++++';,.`       `.'+++++++++++++++++++#+':.`        `..,,,,,,,,,,,,,,:++++++++++#
###+++++++#+';,`       :++++++++++++':,`        `.+++++++++++++++++++#+':.`         ```..............++++++++++#
##++++++++#+';,`       :+++++++++++++;,.`       ``'++++++++++++++++++#+':.`            ``````````````++++++++++#
##++++++++#+';,`       :+++++++++++++':,`        `.++++++++++++++++++#+':.`                          ++++++++++#
##++++++++#+';,`       :++++++++++++++;:.`        `;+++++++++++++++++#+':.`                          +++++++++++
##++++++++#+';,`       :++++++++++++++':,`        `.+++++++++++++++++#+':.`                          +++++++++++
##++++++++#+';,`       :+++++++++++++++;:.`        `:++++++++++++++++#+':.`                          +++++++++++
##++++++++#+';,`       :+++++++++++++++';,``       `.++++++++++++++++#+':.`                          +++++++++++
##++++++++#+';,`       :++++++++++++++++;:.`       ``,+++++++++++++++#+':.`                          +++++++++++
##++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#############++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++###
#############################+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++##########
##########+++++++++++###########+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#############
#########';.````````````@########++++++++++';,``````````#########+++;'```````````````````````````````@##########
#########';.```````````` @########+++++++++';,``````````###########+;'```````````````````````````````@##########
#########';.```````````` +@########++++++++';,``````````###########+;'```````````````````````````````@##########
#########';.````````````  @@#######++++++++';,``````````###########+;'```````````````````````````````@##########
#########';.````````````` `@#########++++++';,``````````###########+''```````````````````````````````@##########
#########';``````````````  #@#########+++++'',``````````@##########+''```````````````````````````````@##########
#########';```````````````  @@########+#+++'',``````````@##########+'+```````````````````````````````@##########
#########';```````````````  `@#############'',``````````@@#########+++##########``````````:@@@@@@@@@@###########
#########';````````````````` #@############';,``````````@@#########++##########+``````````:@@@@@@@@@############
#########';```````````````````@@###########';,``````````@@#########+#########+''``````````:@####################
#########';```````````````````.@###########';,``````````@@##########+########+;;``````````:@####################
#########';````````````````````#@##########';,``````````@@#########+##+######+;;``````````:@####################
#########';`````````````````````@@#########+;,``````````@@##########++++#####+;;``````````:@####################
#########';`````````````````````,@#########+;,``````````@@##########+++++####+;;``````````:@####################
#########';``````````````````````@@########+;,``````````@@#########++++++####+;'``````````:@####################
#########';```````````````````````@@#######+;,``````````@@#########+++++++###+;'``````````:@####################
#########';```````````:```````````:@#######+;,``````````@@#########+++++++###+;'``````````:@####################
#########';```````````@````````````@@######+;,``````````@@##########++++++###+;'``````````:@####################
#########';```````````@#````````````@@#####+;,``````````@@#########+++++++###+;'``````````:@####################
#########';```````````@#,```````````;@#####+;,``````````@@#########++++++++##+;'``````````:@####################
#########';```````````@@#````````````@@####+;,``````````@@#########++++++++##+;'``````````:@####################
#########';```````````@@##````````````@@###+;,``````````@@##########+++++++##+;'``````````:@####################
#########';```````````@@##.```````````'@###+;,``````````@@##########++++++###+;'``````````:@####################
#########';```````````@@#+#````````````@@##+;,``````````@@###########++++++##+;'``````````:@####################
#########';```````````@@#+#+````````````@@#+;,``````````@@###########+++++###+;'``````````:@####################
#########';```````````@@##+#.```````````+@#';,``````````@@###########++++####+;'``````````:@####################
#########';```````````@@##++#````````````@@';,``````````@@###########+#++####+;'``````````:@####################
#########';```````````@@###+++````````````@#;,``````````@@#############++####+;;``````````:@####################
#########';```````````@@####+#````````````#@;,``````````@@#############+#####+;;``````````:@####################
#########';```````````@@####++#````````````@',``````````@@###################+;;``````````:@####################
#########';```````````@@#####+++````````````#.``````````@@###################+;;``````````:@####################
#########';```````````@@######++````````````#,``````````@@###################+;;``````````:@####################
#########';```````````@@######+++````````````,``````````@@###################+;;``````````:@####################
#########';```````````@@#######++'``````````````````````@@###################+;;``````````:@####################
#########';```````````@@#######+++``````````````````````@@###################+;;``````````:@####################
#########+;```````````@@########+++`````````````````````@@###################+;;``````````:@####################
#########+;```````````@@#########++;````````````````````@@###################+;;``````````:@####################
#########+;```````````@@#########+++````````````````````@@###################+;;``````````:@####################
#########+;```````````@@##########+++```````````````````@@###################+;;``````````:@####################
#########+;```````````@@###########++:``````````````````@@###################+;;``````````:@####################
#########+;```````````@@###########+++  ````````````````@@###################+;;``````````:@####################
#########+;```````````@@############+++  ```````````````@@###################+;;``````````:@####################
#########+;```````````@@############+++,  ``````````````@@###################+;;``````````:@####################
#########+;```````````@@#############+++  ``````````````@@###################+;;``````````:@####################
#########+;```````````@@##############+++  `````````````@@###################+;;``````````:@####################
#########+;```````````@@##############+++. `````````````@@###################+;;``````````:@####################
#########+;```````````@@###############+++  ````````````@@###################+;;``````````:@####################
#########+;```````````@@################+++ ````````````@@###################+;;``````````:@####################
#########+;```````````@@################+++.````````````@@###################+;;``````````:@####################
#########+;```````````@@#################+++````````````@@###################+;;``````````:@####################
#########+'.``````````@@##################+++```````````@@###################+''``````````:@####################
#########+'.``````````@@##################++#```````````@@###################+'+``````````:@####################
#########++##@@@@@@@@@@####################+###@@@@@@@@@@#####################+###@@@@@@@@@@####################
#############@@@@@@@@@#########################@@@@@@@@@######################+###@@@@@@@@@#####################
################################################################################################################
```


<!-- Links -->
[freshinstallation]: https://github.com/RLNT/RLNT_WeaponHUD/blob/master/installation/fresh.md "Go to source"
[latest]: https://github.com/RLNT/RLNT_WeaponHUD/releases "Go to source"
[mainpost]: https://github.com/RLNT/RLNT_WeaponHUD#config "Go to source"
