; please remember that this file must be saved with a little-endian byteorder mark, whether it's utf8 or utf16
; that's just one of ahk's wacky rules.
#SingleInstance FORCE
#InstallKeybdHook

; KeyHistory ; uncomment this line if some hotkey is giving you trouble and you need to review scancodes

SetCapslockState AlwaysOff ; I'm pretty sure this only works if near the top of the script.
; For this script, I bound everything to Capslock because my first choice for a dead/hotkey, the fn key, isn't a real key that sends keystrokes :/
; and i am a very quiet man anyway

; I've decided to add some bbcode-style hotstrings, for greater extension and mnemonicity. Not yet comprehensive. Some are just experiments See https://www.autohotkey.com/docs/v1/Hotstrings.htm for info about the wacky options I used here.
; I'm considering using ;;foo;; as the syntax here, since unlike :foo: I can't think of anything else that uses it. Or perhaps foo;;foo2
; Note that almost no text editors compose all of these right, but they should eventually display right in sophisticated text-viewers like the browser.
#Hotstring EndChars :
#Hotstring O ? Z
:::macron::̄
:::breve::̆
:::inverted breve::̑
:::tilde::̃
:::caron::̌
:::circumflex::̂
:::acute::́
:::acute tone::́
:::double acute::̋
:::acute below::̗
:::grave::̀
; Regarding the subsequent line: the ` is a special character in ahk (among many, many special characters...), so you have to have two here to represent just one. The code is :`:, for a ̀
:::``::̀
:::grave tone::̀
:::double grave::̏
:::grave below::̖
:::horn::̛
:::hook above::̉
:::hook below left::̡
:::hook below right::̢
:::cedilla::̧
:::dot::̇
:::dot below::̣
:::two dots::̈
:::twodots::̈
:::two dots below::̤
:::..::̈
:::tie::͡
:::undertie::͜
:::s::̶
:::h::ʰ
:::overline::̅
:::infinity::∞
:::therefore::∴
:::because::∵
:::prime::′
:::double prime::″
:::triple prime::‴
:::quadruple prime::⁗
:::overring::̊
:::underring::̥
;I'd like to have :::ring:: default to overring, but that is also an emoji bbcode, so we can't use it as long as we're using the same escape pattern...

;Could also do stuff like...
:::a'::á ;by the way, this does work for both cases, a' → á and A' → Á by default
:::a~::ã
:::n~::ñ
:::~a::ã
:::~n::ñ
:::a°::å ;unfortunately this does nothing, perhaps because when the script prints, it never sends a ° keystroke, or something. So as of now this just triggers 🅰 emoji ; note that we can't use ao because I've discovered the ao ligature, below.
:::a"::ä
:::e"::ë
:::h"::ḧ
:::i"::ï
:::o"::ö
:::t"::ẗ
:::u"::ü
:::w"::ẅ
:::x"::ẍ
:::y"::ÿ
:::a ring::å
:::slashed o::ø
:::o slash::ø
:::o/::ø
:::/o::ø
:::ae::æ
:::oe::œ
:::ao::ꜵ
:::e::ə ;I've put this here as well to generate the capital schwa, Ə, on occasion.
:::əo::ᴔ ; should be əo, but I can't type ə, and so far I haven't figured out how to make these hotkeys work recursively, so...
:::long s::ſ
:::ellipsis::…
:::...::…
:::midline ellipsis::⋯
:::midlipsis::⋯
:::vertical ellipsis::⋮
:::interrobang::‽
:::?!::‽
:::!?::‽
:::inverted interrobang::⸘
:::¿¡::⸘
:::¡¿::⸘
:::?::� ;should I have saved this for ❓, the emoji that the emoji script reaches by :question:? Hmm...
:::<?>::�
:::??::⸮
;Alphabetic Presentation Forms (only the f ones)
:::ff::ﬀ
:::fi::ﬁ
:::fl::ﬂ
:::ffi::ﬃ
:::ffl::ﬄ
:::ft::ﬅ
:::pbuh::ﷺ
:::schwa::ə

:::alpha::α
:::Alpha::Α
:::ALPHA::Α
:::beta::β
:::Beta::Β
; todo: rest of greek alphabet.
:::theta::θ
:::Theta::Θ


; ASCII "C0" control characters. See https://en.wikipedia.org/wiki/C0_and_C1_control_codes#C0_controls.
; For these, you must use unicode-style {U+hex} directives in AHK; you cannot use eg {ASC 7} or you will get the • bullet point character of Code page 437 instead of the ASCII bel character. Also note that many systems will not take this input correctly. My text editor, notepad++, seems to take them right, however.
:::nul::{U+0} ; (My text editor could handle me including a literal example of this character easily... but it makes git treat this file like binary ha ha! So, no example here.)
:::ack::{U+6} ; 
:::bel::{U+7} ; 
:::tab::{U+9} ; 	 a true tab character (not an indent made of spaces)
:::lf::{U+A} ; a true, modern newline
:::formfeed::{U+C} ;  (I would like to make this :ff:, but that's already ﬀ, alas.)
:::cr::{U+D} ; an impostor, old newline component
:::syn::{U+16} ; 
:::nak::{U+15} ; 
:::esc::{U+1B} ;  can be useful for terminal coloring I guess.
; todo, perhaps: rest of C0


;There could also be a multi-step compose, where a!b → c, c!d → e, etc. Eg ::a!b::c ::c!d::e. Changing back to the hotstring Z0 here could help. Or something.

;quote marks
:::"::“
:::""::”
:::'::‘
:::''::’
:::<<::«
:::>>::»

;emoji-style variation selectors (like everything else, bind to preceding character!)
:::emoji::️
:::demoji::︎

;misc hotstrings
:::dagger::†
:::double dagger::‡
:::triple dagger::⹋
:::multiocular o::ꙮ
:::nbsp::{U+00A0}
:::thinspace:: 
:::thin space:: 
:::thinsp:: 
:::thsp:: :
:::tsp:: :
:::hairspace::{U+200A}
:::hair space::{U+200A}
:::hairsp::{U+200A}
:::hrsp::{U+200A}
:::hsp::{U+200A}
:::nnbsp:: 

:::dotless i::ı
:::dotless I::I
:::dotted i::i
:::dotted I::İ
:::dotless j::ȷ
:::dotless J::J
:::dotted j::j
:::dotted J::J̇

:::ditto::〃
:::ditto mark::〃
:::ditto symbol::〃
:::bullet::•
:::bullet point::•
:::swung dash::⁓
:::wave dash::〜
:::part alternation mark::〽
:::double hyphen::⹀
:::double oblique hyphen::⸗
:::oblique double hyphen::⸗
:::choonpu::ー
:::block::█
:::full block::█

:::IAA::{U+FFF9} ; ￹, Interlinear annotation anchor — marks start of annotated text https://en.wikipedia.org/wiki/Ruby_character https://www.unicode.org/versions/Unicode15.0.0/ch23.pdf#G15944 Example: ￹Hello￺/hε.lo/￻
:::IAS::{U+FFFA} ; ￺, Interlinear annotation separator — marks start of annotating character(s) (probably it's picked so the A reminds you of annotations?
:::IAT::{U+FFFB} ; ￻ Interlinear annotation terminator — marks end of annotated text

#If Getkeystate("Capslock","p")
SC028::SEND ´ ; acute (symbol) (reverse of grave (symbol)) — ie, "fronttick" as opposed to "backtick" ` ; a literal ' was giving me some trouble here, but the scan code SC028 did the trick
a::SEND ∝ ; proportionality
b::SEND ♪ ; eighth note (to demonstrate music)
c::SEND ¢ ; cents
d::SEND ∂ ; partial derivative
e::SEND ∈ ; element of
h::SEND ʰ ; aspiration mark
i::SEND ı ; the dotless i, the abomination
g::SEND ŋ ; ng letter (voiced velar nasal) "eng"
l::SEND ł ; slashed l
m::SEND — ; em dash
n::SEND – ; en dash
o::SEND ° ; degree
p::SEND ¶ ; this is a pilcrow. for some reason notepad displays it as ❡
r::SEND я ; Cyrillic letter ya (lowercase)
s::SEND ∫ ; integral
t::SEND † ; dagger
u::SEND ə ; schwa (u is for uh)
v::SEND ∨ ; logical or
w::SEND ƿ ; wynn
x::SEND × ; cross (multiply)
y::SEND þ ; why is the thorn bound to y? historical folly
z::SEND ß ; Eszett from german (lowercase) bound to z because my s key was taken
=::SEND ≈ ; approximately equal
SC035::SENDINPUT ¯\_(ツ)_/¯ ; shruggie ; a literal / was giving me some trouble here, but the scan code SC035 did the trick
\::SENDINPUT ¯\\\_(ツ)\_/¯ ; reddit-escaped shruggie
`::SEND “ ; fancy left double quote
f::SEND 「 ; left quotation mark japanese
j::SEND 」 ; right quotation mark japanese
;Space::SEND - ; hyphen for programming in lisp faster ; I never used this
Space::SEND ​ ; zero width space ; I'm almost certain this is going to prank me at some point. I may replace it with █ or replace nbsp with █ and replace this with nbsp.
.::SEND ∴ ; therefore
,::SEND ∵ ; because
-::SEND ± ; plus or minus
*::SEND ⁂ ; asterism

;superscript numbers ;TODO: subscript numbers? perhaps using alt? maybe eg :2:, although that should probably be used for keycap digit emojis eg 2️⃣
0::SEND ⁰
1::SEND ¹
2::SEND ²
3::SEND ³
4::SEND ⁴
5::SEND ⁵
6::SEND ⁶
7::SEND ⁷
8::SEND ⁸
9::SEND ⁹

;Possibly going to replace this block with hotstrings like :a~: and such...
Alt & `::SEND ã ; a with tilde from portuguese (` is the same key as ~ and writing ~ here doesn't work)
Alt & a::SEND ä ; a umlaut/diaeresis (lower case, you can shift-insert to uppercase remember?)
Alt & e::SEND ë ; e diaeresis
Alt & i::SEND ï ; i diaeresis
Alt & o::SEND ö ; o umlaut/diaeresis
Alt & u::SEND ü ; u umlaut/diaeresis
Alt & /::SEND ø ; slashed o
Alt & s::SEND ſ ; long s
Alt & n::SEND ñ ; enye (n with tilde from spanish) (lower case, you can shift-insert to uppercase remember?)
Alt & -::SEND ⹀ ; double hyphen
Alt & 0::SEND ∞ ; infinity
Alt & !::SEND ‽ ; interrobang ; This is probably a bad binding because you actually have to hit 1 with the shift off... but plain caps and caps+shift were taken with good reason, and afaict I can't caps+alt+shift

Alt & Space::SEND % respace(Clipboard) ; respace text with random spaces in, like in a pdf or fixed-width ascii document
Alt & SC028::SEND % "{ASC 34}" . respace(Clipboard) . "{ASC 34}" ; respace and quote text (34 is ascii code for double quote)
Alt & y::SEND % "{ASC 34}" . respace(stripTimestamps(Clipboard)) . "{ASC 34}" ; strip youtube timestamps, respace, and quote text
Insert::SENDINPUT % ToFilename(Clipboard)
Alt & Insert::SENDINPUT % ToLower(Clipboard)
Alt & D::SENDINPUT %A_DDD%, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec% ; current date/time ; Mon, 2020-01-13 08:21:01
Ctrl & D::SENDINPUT %A_YYYY%-%A_MM%-%A_DD% ; current date ; 2020-01-13
Alt & V::msgbox You are using Carpboard under AutoHotKey version %A_AhkVersion%

; These are the ones that require you to hold shift
; #If Getkeystate("Capslock","p") and Getkeystate("Shift","p") failed mysteriously,
; so we're just going to use the 2-key hotkey feature
Shift & `::SEND ¬ ; logical not
Shift & !::SEND ¡ ; inverted exclamation mark
Shift & A::SEND ∀ ; all
Shift & B::SEND ♫ ; beamed eighth notes (to demonstrate music)
Shift & C::SEND ⊂ ; subset
Shift & E::SEND ∃ ; exists
Shift & F::SEND ❧ ; fleuron (U+2767 ❧ ROTATED FLORAL HEART BULLET (HTML &#10087;) (Dingbats))
Shift & G::SEND Ŋ ; capital ng letter (voiced velar nasal) "eng"
Shift & I::SEND ɪ ; small capital I, useful as the https://en.wikipedia.org/wiki/Near-close_near-front_unrounded_vowel of IPA
Shift & L::SEND Ł ; slashed L
Shift & N::SEND ∩ ; intersection
Shift & O::SEND ∘ ; ring
Shift & R::SEND Я ; Capital Cyrillic letter ya
Shift & S::SEND § ; section ; on my computer this jams if you use left shift, so use right shift
Shift & T::SEND ‡ ; double dagger
Shift & U::SEND ∪ ; union
Shift & W::SEND Ƿ ; capital wynn
Shift & Y::SEND Þ ; why is the capital thorn bound to capital y? historical folly
Shift & Z::SEND ẞ ; Eszett from german (uppercase) bound to z because my s key was taken

Shift & =::SEND ≡ ; triple bar (sometimes "logically identical to")
Shift & -::SEND ¯ ; overline
Shift & <::SEND ← ; left arrow
Shift & >::SEND → ; right arrow
Shift & SC028::SEND ” ; fancy right double quote ; sc028 in place of a literal " or '
Shift & {::SEND ‘ ; fancy left single quote
Shift & }::SEND ’ ; fancy right single quote
Shift & SC035::SENDINPUT ¿ ; inverted question mark ; sc035 in place of a literal ? or /
;Shift & Space::SEND _ ; underline for typing variable names faster ; I never used this
Shift & Space::SEND {U+00A0} ; non-breaking space
Shift & ^::SEND ∧ ; logical and
Shift & *::SEND ⋅ ; dot (multiply)
Shift & |::SEND ⊢ ; turnstile (useful in logic)
Shift & 3::SEND № ; numero sign (similar use to the number sign, #, which is above 3, and I can't write a literal # in here because it's a ahk modifier)
Shift & %:: SEND ÷ ; division sign
Shift & $::SEND £ ; pound sterling

Shift & Insert::SENDINPUT % ToUpper(Clipboard)

; note: alt+shift will change the keyboard language on windows, like Windows + Spacebar. So... try not to hit that.

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

stripTimestamps(s){
s := RegExReplace(s, "\d?\d?:?\d?\d:\d\d", Replacement := " ")
return s
}

trim(s){
s := RegExReplace(s, "^\s*")
s := RegExReplace(s, "\s*$")
return s
}