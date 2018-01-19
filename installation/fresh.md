# RLNT Weapon HUD

<br>

<a name="freshinstallation"></a>
## Fresh install instructions
You should only follow these install instructions if you **don't have any other of my scripts** installed. In case you have addons/scripts that start with RLNT, please follow this instruction instead: [custom install instructions][custominstallation]!
This instructions are made noob-friendly, read everything carefully! There are many links to guide you through the right steps. Sometimes you also skip some steps to match the right order again. Don't be confused about that.

<a name="freshclient"></a>
# Client installation

1. Download:
	- [Download latest version!][latest]

2. File management:
	- Extract the 'Release.zip' and open it.
	- **In there**, open the 'Client' folder.
	- Move the 'rlnt' folder into your **mission.pbo**.
		>'mission.pbo' is just a placeholder. Your mission is called something like 'Dayz_Epoch_11.Chernarus', depends on the map you're playing on. It's the same directory where your 'init.sqf' and 'description.ext' is stored in.

	- Now you have to check if you already have a custom 'compiles.sqf' or not.
		- If you **have a custom 'compiles.sqf'** follow [these steps](#customcompiles)!
		- If you **don't have a custom 'compiles.sqf'** follow [these steps](#compiles)!

<a name="compiles"></a>
3. No custom 'compiles.sqf':
	- **In the downloaded files**, copy the 'dayz_code' folder into your **mission.pbo**.
	- Now open your 'init.sqf' and find the following line:
		```sqf
		call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
		};
		```
	- Paste this lines **below**:
		```sqf
		call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";
		```
	- Continue with [these steps](#)!

<a name="customcompiles"></a>
3. Custom 'compiles.sqf':
	- First, you have to check if you already have a custom 'keyboard.sqf' or not.
		- If you **have a custom 'keyboard.sqf'** follow [these steps](#customkeyboard)!
		- If you **don't have a custom 'keyboard.sqf'** follow [these steps](#keyboard)!

<a name="keyboard"></a>
4. Custom 'keyboard.sqf':
	- First open the **downloaded files** and place the "Client/dayz_code/compile/keyboard.sqf" in your "mission.pbo/dayz_code/compile" folder. If you don't have that directory, create it. This simply means that you didn't use the Epoch file structure for your custom 'compiles.sqf' but that's not a serious problem.
	- Now open your **custom** 'compiles.sqf' and find the following line:
		```sqf
		DZ_KeyDown_EH = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\keyboard.sqf";
		```
	- **Replace** it with this line:
		```sqf
		DZ_KeyDown_EH = compile preprocessFileLineNumbers "dayz_code\compile\keyboard.sqf";
		```
	- Continue with [these steps](#)!







- Move the 'rlnt' and the 'dayz_code' folder into your mission (where the init.sqf is located).
	- If there are conflicting files in the 'dayz_code' folder, you should merge them.
	- If there are conflicting files in the 'rlnt' folder, you better follow this [instruction](#custominstallation).

3. Activation:
- In your mission, open the **init.sqf** and find the **!isDedicated** codeblock:
	- The codeblock could look slightly different depending on the map you play on.
```sqf
if (!isDedicated) then {
	if (toLower worldName == "chernarus") then {
		execVM "\z\addons\dayz_code\system\mission\chernarus\hideGlitchObjects.sqf";
	};

	//Enables Plant lib fixes
	execVM "\z\addons\dayz_code\system\antihack.sqf";

	if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\compile\client_plantSpawner.sqf"; };
	execFSM "\z\addons\dayz_code\system\player_monitor.fsm";
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	if (DZE_R3F_WEIGHT) then {execVM "\z\addons\dayz_code\external\R3F_Realism\R3F_Realism_Init.sqf";};
	waitUntil {scriptDone progress_monitor};
	cutText ["","BLACK IN", 3];
	3 fadeSound 1;
	3 fadeMusic 1;
	endLoadingScreen;
};
```
- Paste the following line **below** it:
```sqf
execVM "rlnt\addons\RLNT_init.sqf";  /*  RLNT-ADDITIONS  */
```
- For the next line, you need to make sure if you have a custom compiles.sqf and keyboard.sqf or not!
- If you **don't** have a custom compiles.sqf **and don't** have a custom keyboard.sqf, find this line:
```sqf
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
```
- Paste the following line **below** it:
```sqf
call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";
```

<!-- Links -->
[custominstallation]: https://github.com/DAmNRelentless/RLNT_WeaponHUD/installation/custom.md "Go to source"
[latest]: https://github.com/DAmNRelentless/RLNT_WeaponHUD/releases "Go to source"
