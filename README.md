# 3D /me
The /me command but it's 3D printed.

<img src=https://imgur.com/lJZbcGA.png>

## Installation
* Download the resource ;
* Drag and drop it into your resources folder ;
* Add ```start 3dme``` to you ```server.cfg```.

## How to use
* In the chat, type /me followed by your action.

## Options 
* Color of the text : ```client.lua``` line 14 : ```local color = { r = 230, g = 230, b = 230, a = 255 }```
* Font of the text : ```client.lua``` line 15 : ```local font = 0``` Available fonts : https://imgur.com/a/oV3ciWs
* Time on screen : ```client.lua``` line 4 : ```local displayTime = 5000```

## Updates
#### V1.1
* The text display an exact amount of time (thanks to @SaltyGrandpa) ;
* Added "the person" at the beginning of the text (```Line 16``` if you want to change the language) ;
* Using /me multiple times doesn't make it unreadable.
#### V1.2
* Bugs fixes ;
* Changed the native color and removed the shadow and the outline (you can still reactivate it) ;
* Now draw when you are close to the person (50 m).
#### V1.3
* Now send a chat message to the people close to the person ;
* Can now draw a background to the text ;
* Added the options to draw a dropshadow.
#### V2.0
* The command is now server sided ;
* No longer creates logs, you will have to use a **real** log resource ;
* No longer prints the action in the chat ;
* Removed some design options (background and dropshadow) as it's no coherent with the idea I had on the resource ;
* The code has been globally updated, more comments, more optimisation ;
* Some bugs have been fixed.

## Note
* This may not work if are you using a custom chat resource.
* This could conflict with other /me scripts (disable them).
