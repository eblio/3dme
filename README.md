# 3D /me
The /me command but it draw it in 3D

<img src=https://i.imgur.com/VUO7GWD.jpg>

## Installation
* Download the resource ;
* Drag and drop it in your resources folder ;
* Add ```start 3dme```to you ```server.cfg```.

## How to use
* In the chat type /me followed by your action.

## Options 
* Color of the text : ```client.lua``` line 1 : ```local color = {r = 37, g = 175, b = 134, alpha = 255}```
* Font of the text : ```client.lua``` line 2 : ```local font = 0``` Available fonts : https://imgur.com/a/oV3ciWs
* Time on screen : ```client.lua``` line 2 : ```local time = 500```
* Enable or disable the log : ```server.lua``` line 1 : ```local logEnabled = true```

## Update
* The text display an exact amount of time (thanks to @SaltyGrandpa)
* Added "the person" at the beginning of the text (```Line 7``` if you want to change the language)
* Using /me multiple times doesn't make it unreadable

## Note
* This couldn't work if you use a custom chat resource.
* This could conflict with other /me scripts (just disable them).
