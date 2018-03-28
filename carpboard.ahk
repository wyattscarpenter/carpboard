; please remember that this file must be saved with a little-endian byteorder mark, whether it's utf8 or utf16
; that's just one of ahk's wacky rules.
#SingleInstance FORCE
#InstallKeybdHook

; KeyHistory ; uncomment this line if some hotkey is giving you trouble and you need to review scancodes

SetCapslockState AlwaysOff
; bound everything to Capslock because the fn key isn't a real key that sends keystrokes :/
; and i am a very quiet man anyway

#If Getkeystate("Capslock","p")
SC028::SEND ´ ; a literal ' was giving me some trouble here, but the scan code SC028 did the trick
c::SEND ¢
e::SEND ∈
s::SEND §
=::SEND ≈
0::SEND ∞
SC035::SENDINPUT ¯\_(ツ)_/¯ ; a literal / was giving me some trouble here, but the scan code SC035 did the trick
`::SEND “
o::SEND °
f::SEND (
j::SEND )
Space::SEND -
Insert::SENDINPUT % ToFilename(Clipboard)

; these are the ones that require you to hold shift
; #If Getkeystate("Capslock","p") and Getkeystate("Shift","p") failed mysteriously,
; so we're just going to use the 2-key hotkey feature
Shift & `::SEND ¬
Shift & !::SEND ¡
Shift & A::SEND ∀
Shift & -::SEND ¯
Shift & e::SEND ∃
Shift & s::SEND ∫
Shift & <::SEND ←
Shift & >::SEND →
Shift & SC028 ::SEND ” ; sc035 in place of a literal " or '
Shift & {::SEND ‘
Shift & }::SEND ’
Shift & SC035::SENDINPUT ¿ ; sc035 in place of a literal ? or /
Shift & Space::SEND _ 
Shift & Insert::SENDINPUT % ToUpper(Clipboard)

ToFilename(s){
StringLower, tmp, s
;the following heuristics have served me well
tmp := StrReplace(tmp, "+", " plus ")
tmp := StrReplace(tmp, "=", " equals ")
tmp := StrReplace(tmp, "/", " slash ")
tmp := StrReplace(tmp, "", " percent ")
tmp := StrReplace(tmp, "&", " and ")
tmp := RegExReplace(tmp, "\$([^ ])", Replacement := "$1 dollars")
tmp := RegExReplace(tmp, "[^\w\_\ \-]", "")
tmp := RegExReplace(tmp, "\s+", Replacement := " ")
tmp := RegExReplace(tmp, "^\s*")
tmp := RegExReplace(tmp, "\s*$")
return tmp
}

ToUpper(s){
StringUpper, tmp, s
return tmp
} ; well, that was easy!