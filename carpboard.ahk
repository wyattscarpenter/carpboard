﻿; please remember that this file must be saved with a little-endian byteorder mark, whether it's utf8 or utf16
; that's just one of ahk's wacky rules.
#SingleInstance FORCE
#InstallKeybdHook

; KeyHistory ; uncomment this line if some hotkey is giving you trouble and you need to review scancodes

SetCapslockState AlwaysOff
; bound everything to Capslock because the fn key isn't a real key that sends keystrokes :/
; and i am a very quiet man anyway

#If Getkeystate("Capslock","p")
SC028::SEND ´ ; a literal ' was giving me some trouble here, but the scan code SC028 did the trick
l::SEND ł
c::SEND ¢
e::SEND ∈
s::SEND §
=::SEND ≈
0::SEND ∞
SC035::SENDINPUT ¯\_(ツ)_/¯ ; a literal / was giving me some trouble here, but the scan code SC035 did the trick
\::SENDINPUT ¯\\\_(ツ)\_/¯
`::SEND “
o::SEND °
f::SEND (
j::SEND )
v::SEND ∨
.::SEND ∴
,::SEND ∵
x::SEND ×
-::SEND ±
Space::SEND -
Alt & Space::SEND % trim(Clipboard)
Insert::SENDINPUT % ToFilename(Clipboard)

; these are the ones that require you to hold shift
; #If Getkeystate("Capslock","p") and Getkeystate("Shift","p") failed mysteriously,
; so we're just going to use the 2-key hotkey feature
Shift & `::SEND ¬
Shift & !::SEND ¡
Shift & A::SEND ∀
Shift & -::SEND ¯
Shift & e::SEND ∃
Shift & =::SEND ≡
Shift & s::SEND ∫ ; on my comptuer this jams if you use left shift, so use right shift
Shift & <::SEND ←
Shift & >::SEND →
Shift & SC028::SEND ” ; sc028 in place of a literal " or '
Shift & {::SEND ‘
Shift & }::SEND ’
Shift & SC035::SENDINPUT ¿ ; sc035 in place of a literal ? or /
Shift & Space::SEND _ 
Shift & ^::SEND ∧
Shift & *::SEND ⋅
Shift & O::SEND ∘
Shift & Insert::SENDINPUT % ToUpper(Clipboard)
Alt & D::SEND %A_DDD%, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec%
; Mon, 2020-01-13 08:21:01

ToFilename(s){
StringLower, tmp, s
;the following heuristics have served me well
tmp := StrReplace(tmp, "+", " plus ")
tmp := StrReplace(tmp, "=", " equals ")
tmp := StrReplace(tmp, "/", " slash ")
tmp := StrReplace(tmp, "%", " percent ")
tmp := StrReplace(tmp, "&", " and ")
tmp := StrReplace(tmp, "@", " at ")
tmp := StrReplace(tmp, "_", " ")
tmp := StrReplace(tmp, ".", " ")
tmp := StrReplace(tmp, "ü", "ue") ; these are for german umlauts, but might collide with diaereses
tmp := StrReplace(tmp, "ö", "oe")
tmp := StrReplace(tmp, "ä", "ae")
tmp := RegExReplace(tmp, "\$(\d*)\.(\d*)", Replacement := " $1 dollars $2 cents ")
tmp := RegExReplace(tmp, "\$(\d*)", Replacement := " $1 dollars ")
tmp := RegExReplace(tmp, "\s+", Replacement := " ")
tmp := RegExReplace(tmp, "[^\w\ \-]", "")
tmp := RegExReplace(tmp, "\s+", Replacement := " ")
tmp := RegExReplace(tmp, "^\s*")
tmp := RegExReplace(tmp, "\s*$")
return tmp
}

ToUpper(s){
StringUpper, tmp, s
return tmp
} ; well, that was easy!

trim(s){
s := RegExReplace(s, "^\s*")
s := RegExReplace(s, "\s*$")
return s
}