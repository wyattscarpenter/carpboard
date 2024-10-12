I am a worldly man; I am a man of the world. And thus, in the course of my world-based life, I sometimes require the ability to type various arcane symbols related to math, typography, etc. In my current exile in Microsoft Windows, the easiest way to do this is through an AutoHotKey script that does what I want. I provide you with this script in the hopes that it will be useful to you, and also because "you" are probably me 10 years from now, having switched operating systems twice and forgotten how to do any of this.

To get this script to run, you will have to install AutoHotKey. To get this script to run on startup, you will have to place a shortcut to carpboard.ahk in your Startup folder. You can create this shortcut by right-clicking carpboard.ahk and selecting "Create shortcut". Then you simply have to move that short cut into the Startup folder, which is probably C:\Users\[you]\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup, but can be more easily reached by typing "shell:startup" into the address bar of Explorer.

This script does not focus on typing characters from other languages, because Windows already allows you to add languages and keyboards to the system to type these. Some languages I have personally found useful are Greek, Russian, and English (United States) with the United States-International QWERTY Keyboard option. In fact, unless your unconventional character input needs exactly match my own, you may find it more useful to disregard this script entirely and check out Jukka Korpela's Math Keyboard layout for QWERTY keyboards on Windows, which can be found here: http://jkorpela.fi/math/kbd.html. For emoji input, I use https://github.com/alexmick/emoji-to-ahk/.

This script turns the capslock key into a special key, however pressing it by itself (or if you press or release certain chords in the wrong order) will toggle capslock.

Since AHK is kind of a flaky technology, you could maybe think of carpboard as being valuable as a mapping of symbols to other symbols that you could implement in anything else. Expect, also, I'm probably going to change the symbols an inputs later. So... uh...

(I'm also probably going to change input strategies a lot when I get my programmable split keyboard soon. Possibly just adopt someone else's custom system for that, if there's one with enough symbols...)

I release this script into the public domain under CC0. See https://creativecommons.org/publicdomain/zero/1.0/ for more information.
