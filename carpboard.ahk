﻿; please remember that this file must be saved with a little-endian byteorder mark, whether it's utf8 or utf16
; that's just one of ahk's wacky rules.
#SingleInstance FORCE
#InstallKeybdHook

; KeyHistory ; uncomment this line if some hotkey is giving you trouble and you need to review scancodes

SetCapslockState AlwaysOff
; bound everything to Capslock because the fn key isn't a real key that sends keystrokes :/
; and i am a very quiet man anyway

#If Getkeystate("Capslock","p")
SC028::SEND ´ ; acute (reverse of grave) ; a literal ' was giving me some trouble here, but the scan code SC028 did the trick
a::SEND ∝ ; proportionality
b::SEND ♪ ; eighth note (to demonstrate music)
c::SEND ¢ ; cents
d::SEND ∂ ; partial derivative
e::SEND ∈ ; element of
l::SEND ł ; slashed l
m::SEND — ; em dash
n::SEND – ; en dash
o::SEND ° ; degree
p::SEND ¶ ; this is a pilcrow. for some reason notepad displays it as ❡
s::SEND ∫ ; integral
t::SEND † ; dagger
v::SEND ∨ ; logical or
x::SEND × ; cross (multiply)
y::SEND þ ; why is the thorn bound to y? historical folly
z::SEND ß ; Eszett from german (lowercase) bound to z because my s key was taken
=::SEND ≈ ; approximately equal
0::SEND ∞ ; infinity
SC035::SENDINPUT ¯\_(ツ)_/¯ ; shruggie ; a literal / was giving me some trouble here, but the scan code SC035 did the trick
\::SENDINPUT ¯\\\_(ツ)\_/¯ ; reddit-escaped shruggie
`::SEND “ ; fancy left double quote
f::SEND 「 ; left quotation mark japanese
j::SEND 」 ; right quotation mark japanese
Space::SEND - ; hyphen for programming in lisp faster
.::SEND ∴ ; therefore
,::SEND ∵ ; because
-::SEND ± ; plus or minus
*::SEND ⁂ ; asterism
Alt & a::SEND ã ; a with tilde from portuguese (lower case, you can shift-insert to uppercase remember?)
Alt & f::SEND ❧ ; fleuron (U+2767 ❧ ROTATED FLORAL HEART BULLET (HTML &#10087;) (Dingbats))
Alt & n::SEND ñ ; enye (n with tilde from spanish) (lower case, you can shift-insert to uppercase remember?)
Alt & Space::SEND % respace(Clipboard) ; respace text with random spaces in, like in a pdf or fixed-width ascii document
Alt & SC028::SEND % "{ASC 34}" . respace(Clipboard) . "{ASC 34}" ; respace and quote text (34 is ascii code for double quote)
Insert::SENDINPUT % ToFilename(Clipboard)
Alt & Insert::SENDINPUT % ToLower(Clipboard)
Alt & D::SENDINPUT %A_DDD%, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec% ; current date/time ; Mon, 2020-01-13 08:21:01

; these are the ones that require you to hold shift
; #If Getkeystate("Capslock","p") and Getkeystate("Shift","p") failed mysteriously,
; so we're just going to use the 2-key hotkey feature
Shift & `::SEND ¬ ; logical not
Shift & !::SEND ¡ ; inverted exclamation mark
Shift & A::SEND ∀ ; all
Shift & B::SEND ♫ ; beamed eighth notes (to demonstrate music)
Shift & C::SEND ⊂ ; subset
Shift & E::SEND ∃ ; exists
Shift & F::SEND ſ ; why is the long s bound to f? because s was already taken, and it looks like an f
Shift & L::SEND Ł ; slashed L
Shift & N::SEND ∩ ; intersection
Shift & O::SEND ∘ ; ring
Shift & S::SEND § ; on my comptuer this jams if you use left shift, so use right shift
Shift & T::SEND ‡ ; double dagger
Shift & U::SEND ∪ ; union
Shift & Y::SEND Þ ; why is the thorn bound to y? historical folly
Shift & Z::SEND ẞ ; Eszett from german (uppercase) bound to z because my s key was taken
Shift & =::SEND ≡ ; triple bar (sometimes "logically identical to")
Shift & -::SEND ¯ ; overline
Shift & <::SEND ← ; left arrow
Shift & >::SEND → ; right arroe
Shift & SC028::SEND ” ; fancy right double quote ; sc028 in place of a literal " or '
Shift & {::SEND ‘ ; fancy left single quote
Shift & }::SEND ’ ; fancy right single quote
Shift & SC035::SENDINPUT ¿ ; inverted question mark ; sc035 in place of a literal ? or /
Shift & Space::SEND _ ; underline for typing variable names faster
Shift & ^::SEND ∧ ; logical and
Shift & *::SEND ⋅ ; dot (multiply)
Shift & |:: SEND ⊢ ; turnstile (useful in logic)
Shift & $:: SEND £ ; pound sterling
Shift & Insert::SENDINPUT % ToUpper(Clipboard)


ToFilename(s){
StringLower, tmp, s
;the following heuristics have served me well
tmp := StrReplace(tmp, "+", " plus ")
tmp := StrReplace(tmp, "=", " equals ")
tmp := StrReplace(tmp, "/", " slash ")
tmp := StrReplace(tmp, "%", " percent ")
tmp := StrReplace(tmp, "&", " and ")
;tmp := StrReplace(tmp, "@", " at ") ; since most @s are usernames nowadays this turns out to be a bad substitution, better to just remove them.
tmp := StrReplace(tmp, "_", " ")
tmp := StrReplace(tmp, "-", " ") ; it's legitimate to have semantic hyphens in a file name, but I often like to copy file names that use them just as spaces.
tmp := StrReplace(tmp, ".", " ")
tmp := StrReplace(tmp, "ü", "ue") ; these are for german umlauts, but might collide with diaereses
tmp := StrReplace(tmp, "ö", "oe")
tmp := StrReplace(tmp, "ä", "ae")
tmp := StrReplace(tmp, "ñ", "ny") ; spanish
tmp := RegExReplace(tmp, "\$(\d*)\.(\d*)", Replacement := " $1 dollars $2 cents ")
tmp := RegExReplace(tmp, "\$(\d*)", Replacement := " $1 dollars ")
tmp := RegExReplace(tmp, "\s+", Replacement := " ")
tmp := RegExReplace(tmp, "[^\w\ \-]", "")
tmp := respace(tmp)
return tmp
}

ToUpper(s){
StringUpper, tmp, s
return tmp
} ; need this function that returns something so we can pass the result to SEND inline.

ToLower(s){
StringLower, tmp, s
return tmp
} ; need this function that returns something so we can pass the result to SEND inline

respace(s){
s := RegExReplace(s, "\s+", Replacement := " ")
s := trim(s)
return s
}

trim(s){
s := RegExReplace(s, "^\s*")
s := RegExReplace(s, "\s*$")
return s
}