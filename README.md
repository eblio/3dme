# 3D /me
A FiveM script written in LUA that implements the /me command with 3D printing.

The /me command allows you to display a specific action above the head of a player. It's particularly used for actions that couldn't have been done in game in a roleplay context.

<img src=https://imgur.com/lJZbcGA.png>

## Installation
* Download the resource ;
* Drag and drop it into your resources folder ;
* Add ```ensure 3dme``` to your server configuration file.

## How to use
* In the chat, type /me followed by your action.

## Options 
| Parameter | Line | Suggestion |
| --- | --- | --- |
| Color of the text | ```config.lua``` : line 6 | ```color = { r = 230, g = 230, b = 230, a = 255 }``` |
| Font of the text | ```config.lua``` : line 7 | ```font = 0``` ([available fonts](https://imgur.com/a/oV3ciWs)) |
| Time on screen | ```config.lua``` : line 8 | ```time = 5000``` |
| Language | ```config.lua``` : line 4 | ```language = 'en'``` |


## Updates
To see the previous changelogs, please refer to the [FiveM forum post](https://forum.cfx.re/t/release-me-but-the-text-is-3d-printed/).

#### V2.1
* Added Onesync Infinity support thanks to *@glitchdetector* ;
* Replaced `__resource.lua` by its new version `fxmanifest.lua`.

#### V2.2
* Added a config file, including the possibility to choose a language ;
* Added command suggestion ;
* Reformated some code and the README.

## Note
* This may not work if are you using a custom chat resource ;
* This could conflict with other /me scripts (disable them).
