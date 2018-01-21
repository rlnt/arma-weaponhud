# RLNT Weapon HUD
**DayZ-Epoch 1.0.6.2**<br>
*Last update: 21.01.2018* | *v1.0.3*

---

[Epoch-Forum thread][epochforum]<br>
[Report issues/bugs/problems][issues]<br>
[Suggest features/ideas][suggestions]<br>

[Releases][releases]

---

## Credits

+ **Authors:**
	+ **Relentless:** [GitHub][relentless]
	+ **Thonikum:** [GitHub][thonikum]
+ **$p4rkY:** taught me most in SQF ([his GitHub][sparky])
+ **Salival:** always helping me with brainf*cking issues ([his GitHub][salival])
+ **Iben:** often helps with issues, also got the GitHub design from him ([his GitHub][iben])
+ **LordGolias:** made an awesome Atom SQF-linter ([his GitHub][golias])
+ **Epoch-Discord:** filled with nice guys that often help ([join the Discord][discord])

---

## Structure

- [Features](#features)
	- [text](#text)
	- [picture](#picture)
- [Install instructions](#installation)
	- [fresh installation][freshinstallation]
	- [custom installation][custominstallation]
- [Configuration](#config)
	- [general](#general)
	- [custom weapons](#weapons)
	- [custom items](#items)
	- [togglable Weapon HUD](#toggle)
- [Changelog](#changelog)

---

<a name="features"></a>
## Features

<a name="text"></a>
- General:
	- Multi-Weapon-Support (compatible with one or two primaries)
	- Quick-Items (adjustable item type and amount)
- Visibles (toggable in config):
	- hotkeys
	- weapon names (localized)
	- item names (localized)
	- item amounts
- Customizables (adjustable in config):
	- hotkeys
	- item type
	- item amount
	- colors of the boxes
	- colors of the texts
	- colors of the hotkeys
- Other:
	- The script includes a huge error prevention mechanic. Whenever it will detect an error in your installation or in your configuration, it will either automatically fix it or inform you.
	- It also detects the amount of boxes that are needed to display everything you set up.
	- The Weapon HUD has a huge config you can adjust to fit your personal preferences. Everything you need to know is explained in there.
	- It also supports custom weapons and items.

<a name="picture"></a>
**That's not enough explanation for you and you want some graphical information? Here you go:**

![Weapon HUD Preview](installation/WeaponHUDPreview.png)

---

<a name="installation"></a>
## Install instructions

- [Install instructions (if you don't have any other RLNT-addons)][freshinstallation]
	- [client][freshclient]
	- [infiSTAR][freshinfistar]
- [Install instructions (if you already have another RLNT-addon)][custominstallation]
	- [client][customclient]
	- [infiSTAR][custominfistar]

---

<a name="config"></a>
## Configuration

<a name="general"></a>
**General configuration:**
<br>
All you need to do is opening "mission/rlnt/addons/Weapon HUD/rlnt_wh_config.sqf". Basically, you have to read everything that is explained in there and adjust the options to your personal preferences. You can also keep everything default if you are too lazy or don't know what to do, the configuration should be fine.

<a name="weapons"></a>
**Custom weapons:**
<br>
As I said in the features, this script also supports custom weapons. All Epoch weapons are added by default but if you use Overpoch (which includes the Overwatch weapons), you might need to adjust the configuration. It's not like you have to add all weapons to the script. That would be horrible. But if you take a look into the config, you should see an option that is called 'rlnt_wh_smallWeapons'. As the description of the option says, you have to insert all weapons that are smaller than the usual assault rifles. Everything like pistols. Otherwise the images will be stretched and ugly. If you don't add them to the array they will still be supported but as I said, the image will look ugly.

<a name="items"></a>
**Custom items:**
<br>
Same as the weapons, custom items are also supported but a bit more complicated to add. Currently, you can see all supported items in the config in the 'rlnt_wh_itemList'. I removed the case-sensitivity but if you want to add more items, you should include them case-sensitive to prevent further errors (just in case). Adding the item to the array is 100% required to make it supported! But that's not all you need to do. As you may have already seen, there are scripts for each item in the "mission/rlnt/addons/Weapon HUD/actions" folder. Whenever you add a new item, you need to write a script for it to tell the addon what should happen if you press the hotkey for it. Also you have to add it to the action-selection method which you can take a look at in "rlnt/functions/RLNT_wh_action.sqf". If you have any issues with that, let me know!

<a name="toggle"></a>
**Togglable Weapon HUD:**
<br>
Since so many people requested a toggle option in my last version, I finally decided to add it. Usually, you are only able to toggle it by pressing the configured hotkey. But I know there are people who want to add the toggle option into their dialogs or other menus. Good news, I made a function to do that. Whenever you want to toggle the Weapon HUD, execute the following line:
```sqf
call RLNT_wh_toggleHUD;
```
The function automatically detects whether the Weapon HUD is activated or deactived and will toggle it so if you want to reenable it, just use the same line again. Easy, isn't it?

---

<a name="changelog"></a>
## Changelog

| Date       | Version | Description                                                                  |
| :---       | :---    | :---                                                                         |
| 21.01.2018 | v1.0.0  | Initial release                                                              |
| 21.01.2018 | v1.0.1  | Updated references                                                           |
| 21.01.2018 | v1.0.2  | Updated formatting                                                           |
| 21.01.2018 | v1.0.3  | Fix stringTable<br>*Thanks:* @kingpapawawa<br>*Changes:* [[commit][update1]] |


<!-- Links  -->
[epochforum]: https://epochmod.com/forum/topic/44851-uploading-rlnt-weapon-hud-21012018-v100 "Go to source"
[issues]: https://github.com/RLNT/RLNT_WeaponHUD/issues/1 "Go to source"
[suggestions]: https://github.com/RLNT/RLNT_WeaponHUD/issues/2 "Go to source"
[releases]: https://github.com/RLNT/RLNT_WeaponHUD/releases "Go to source"
[relentless]: https://github.com/DAmNRelentless "Go to source"
[thonikum]: https://github.com/Thonikum "Go to source"
[sparky]: https://github.com/SPKcoding "Go to source"
[salival]: https://github.com/oiad "Go to source"
[iben]: https://github.com/infobeny "Go to source"
[golias]: https://github.com/LordGolias "Go to source"
[discord]: https://discord.gg/0k4ynDDCsnMzkxk7 "Go to source"
[freshinstallation]: https://github.com/RLNT/RLNT_WeaponHUD/blob/master/installation/fresh.md "Go to source"
[custominstallation]: https://github.com/RLNT/RLNT_WeaponHUD/blob/master/installation/custom.md "Go to source"
[freshclient]: https://github.com/RLNT/RLNT_WeaponHUD/blob/master/installation/fresh.md#client "Go to source"
[freshinfistar]: https://github.com/RLNT/RLNT_WeaponHUD/blob/master/installation/fresh.md#infistar "Go to source"
[customclient]: https://github.com/RLNT/RLNT_WeaponHUD/blob/master/installation/custom.md#client "Go to source"
[custominfistar]: https://github.com/RLNT/RLNT_WeaponHUD/blob/master/installation/custom.md#infistar "Go to source"
[update1]: https://github.com/RLNT/RLNT_WeaponHUD/commit/af9338ca96fcc5990ea0907894537ed8f4b95fea "Go to source"
