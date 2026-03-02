# Standalone 3D /me & /do command
# Creds @Eblio modified  @n0tst3
A FiveM script written in LUA that implements the /me & /do command with 3D printing.

## ME Command
The /me command allows you to display a specific action above the head of a player. It's particularly used for actions that couldn't have been done in game in a roleplay context.
example: /me waves 

<img src=https://i.imgur.com/MfjAHdw.png>

## DO Command 
The /do command is used primarily in serious roleplay servers and is used to describe something in your enviroment or state a fact in roleplay. It is also used if you want to ask something roleplay wise.
example: /do is the door open?

<img src=https://i.imgur.com/tdysqaj.png>

## Installation
* Download the resource ;
* Drag and drop it into your resources folder ;
* To Change language; Edit Config.lua > line 8 
* Add ```ensure 3d-me-do``` to your server configuration file.

## How to use
* /me & /do in chat.

## Options 
| Parameter | Line | Suggestion |
| --- | --- | --- |
| Time on screen | ```config.lua``` : line 8 | ```time = 5000``` |
| Language | ```config.lua``` : line 4 | ```language = 'en'``` |

## n0tst3 edit
Added de lang, trans for do command
Added /do for a more immersive rp experience

## Note
* This may not work if are you using a custom chat resource ;
* This script is fully standalone.
