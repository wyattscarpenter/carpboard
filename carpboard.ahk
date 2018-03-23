; please remember that this file must be saved with a little-endian byteorder mark, whether it's utf8 or utf16
; that's just one of ahk's wacky rules.
#SingleInstance FORCE
#InstallKeybdHook

SetCapslockState AlwaysOff
; bound everything to Capslock because the fn key isn't a real key that sends keystrokes :/
; and i am a very quiet man anyway

Capslock & SC028::SEND ´ ; a literal ' was giving me some trouble here, but the scan code SC028 did the trick
Capslock & c::SEND ¢
Capslock & e::SEND ∈
Capslock & s::SEND §
Capslock & =::SEND ≈
Capslock & 0::SEND ∞
Capslock & SC035::SENDINPUT ¯\_(ツ)_/¯ ; a literal / was giving me some trouble here, but the scan code SC035 did the trick
Capslock & `::SEND “
Capslock & o::SEND °
Capslock & Insert::SENDINPUT % ToFilename(Clipboard)

#If Getkeystate("Shift","p") ;if shift is held the following hotkeys are active.
Capslock & `::SEND ¬
Capslock & !::SEND ¡
Capslock & a::SEND ∀
Capslock & -::SEND ¯
Capslock & e::SEND ∃
Capslock & s::SEND ∫
Capslock & <::SEND ←
Capslock & >::SEND →
Capslock & "::SEND ”
Capslock & {::SEND ‘
Capslock & }::SEND ’
Capslock & ?::SENDINPUT ¿
;note to self, add a way to toggle upcase

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