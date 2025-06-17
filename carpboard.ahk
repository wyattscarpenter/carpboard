; Please remember that this file must be saved with a little-endian byteorder mark, whether it's utf8 or utf16; that's just one of ahk (v1)'s wacky rules.
#SingleInstance FORCE
#InstallKeybdHook

; :*:'::’ ; this extremely powerful line makes the apostrophe/straight quote key actually type a fancy apostrophe...

; KeyHistory ; uncomment this line if some hotkey is giving you trouble and you need to review scancodes

; "As for the CapsLock modifier, this script is able to recognize if you are using it as a modifier or are just toggling it."
; "Add 3 more layers to your keyboard Using these 3 Modifiers - Easy to Program Too!" https://www.autohotkey.com/boards/viewtopic.php?f=7&t=20661
CapsLock::
  KeyWait, CapsLock
  If (A_PriorKey="CapsLock")
    SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"

; I've decided to add some bbcode-style hotstrings, for greater extension and mnemonicity. Not yet comprehensive. Some are just experiments See https://www.autohotkey.com/docs/v1/Hotstrings.htm for info about the wacky options I used here.
; eventually you should probably be able to type any unicode character name this way to get it, in addition to my mnemonics and the CLDR names.
; I'm considering using changing to use ;;foo;; as the syntax here, since unlike :foo: I can't think of anything else that uses it. Or perhaps foo;;foo2
; Note that almost no text editors compose all of these right, but they should eventually display right in sophisticated text-viewers like the browser.
#Hotstring EndChars :
#Hotstring O ? Z

; Typically I make misc additions here:
:::+-::±
:::+_::±
:::plus minus::±
:::-+::∓
:::minus plus::∓
:::fleuron::❧ ; (U+2767  ROTATED FLORAL HEART BULLET (HTML &#10087;) (Dingbats))
:::flueron::❧ ; I often mistype this.
:::whale::🐋
:::robot::🤖
:::hyphen::‐ ; a proper U+2010 hyphen
:::nodding::🙂‍↕️ ; this is an emoji zwj seequence that most vendors recognise these days
:::nod::🙂‍↕️
:::head shaking vertically::🙂‍↕️
:::shake::🙂‍↔️
:::shaking::🙂‍↔️
:::head shaking::🙂‍↔️
:::head shaking horizontally::🙂‍↔️
:::face shaking::🫨
:::shaking face::🫨
:::roll::🙄
:::rolling::🙄
:::rolling eyes::🙄
:::face with rolling eyes::🙄
:::esh::ʃ
:::integral::∫
:::middle dot::·
:::=>::⇒
:::fat arrow::⇒
:::rightwards fat arrow::⇒
:::rightwards double arrow::⇒
:::<=::⇐
:::back fat arrow::⇐
:::leftwards fat arrow::⇐
:::leftwards double arrow::⇒
:::rightwards paired arrows::⇉
:::leftwards paired arrows::⇇
:::angle bracket left::⟨
:::left angle bracket::⟨
:::angle bracket right::⟩
:::right angle bracket::⟩
:::angle brackets::⟨⟩

:::vs1::{U+FE00}
:::vs17::{U+E0100}

;bidi (bidirectional text) controls, which I got from https://www.w3.org/International/questions/qa-bidi-unicode-controls ; incomplete coverage
:::lri::{U+2066}
:::left-to-right isolate::{U+2066}
:::ltr isolate::{U+2066}
:::right-to-left isolate::{U+2067}
:::rli::{U+2067}
:::rtl isolate::{U+2067}
:::pdi::{U+2069}

:::asterism::⁂
:::***::⁂
:::l/::ł
:::/l::ł
:::slashed l::ł
:::inverse bullet::◘
:::hollow bullet::◦
:::white bullet::◦
:::bullet operator::∙
:::wj::{U+2060}
:::root::√
:::square root::√
:::radical::√
:::surd::√
:::cube root::∛
:::fourth root::∜
:::hypercube root::∜
:::squared::²
:::cubed::³
:::hypercubed::⁴
:::1/2::½
:::half::½
:::c/o::℅
:::care of::℅
:::a/c:::℀
:::account::℀
:::zh::ʒ
:::=?::≟
:::?=::≟
:::gamer::🎮
:::keycap::⃣
:::Combining Enclosing Keycap::⃣
:::father father::君君臣臣父父子子
:::slight smile::🙂
:::slight_smile::🙂
:::slight::🙂
:::)::🙂
:::ideographic space::　
:::think::🤔
:::thinking::🤔
:::inf::∞
:::00::∞
:::I::ɪ
:::ij::ĳ
:::party::🥳
:::salute::🫡
:::shush::🤫
:::!!::‼
:::|-::⊢
:::right tack::⊢
:::tack::⊢
:::proves::⊢
:::tee::⊢
:::|=::⊨
:::double turnstile::⊨
:::ttee::⊨
:::grimace::😬
:::grimmace::😬
:::grimmacing::😬
:::clenched teeth::😬
:::--::⹀
:::=::⹀
; this fraction slash does the wacky thing where 1⁄2 displays like ½
:::fraction::⁄
:::fraction slash::⁄
; note that this is different than the fraction slash
:::division slash::∕
:::a'::á ;by the way, this does work for both cases, a' → á and A' → Á by default
:::æ'::ǽ
:::ae'::ǽ
:::c'::ć
:::e'::é
:::g'::ǵ
:::i'::í
:::k'::ḱ
:::l'::ĺ
:::m'::ḿ
:::n'::ń
:::o'::ó
:::ø'::ǿ
:::/o'::ǿ
:::o/'::ǿ
:::p'::ṕ
:::r'::ŕ
:::s'::ś
:::u'::ú
:::w'::ẃ
:::y'::ý
:::z'::ź
:::o macron::ō
:::o-::ō

:::zwj::‍
:::F::🇫
:::sus::ඞ
:::amogus::ඞ
:::amongus::ඞ
:::among us::ඞ
:::sus2::ඩ
:::amogus2::ඩ
:::amongus2::ඩ
:::among us2::ඩ
:::turned ampersand::⅋
:::&&::⅋
:::per::⅌
:::per sign::⅌
:::non-breaking space::{U+00A0}
:::logical and::∧
:::and::∧
:::multiply::⋅
:::dotproduct::⋅
:::dot product::⋅
:::times::×
:::crossproduct::×
:::cross product::×
:::turnstile::⊢
:::numero::№
:::number::№
:::no::№
:::nr::№
:::division sign::÷
:::division::÷
:::divide::÷
:::pound sterling::£
:::pound::£ ; due to a different script I have running, this always turns into 💷 instead for me. A literal picture of a pound note lol...

; https://en.wikipedia.org/wiki/Regional_indicator_symbol
:::regional indicator symbol letter a::🇦
:::regional indicator symbol letter b::🇧
:::regional indicator symbol letter c::🇨
:::regional indicator symbol letter d::🇩
:::regional indicator symbol letter e::🇪
:::regional indicator symbol letter f::🇫
:::regional indicator symbol letter g::🇬
:::regional indicator symbol letter h::🇭
:::regional indicator symbol letter i::🇮
:::regional indicator symbol letter j::🇯
:::regional indicator symbol letter k::🇰
:::regional indicator symbol letter l::🇱
:::regional indicator symbol letter m::🇲
:::regional indicator symbol letter n::🇳
:::regional indicator symbol letter o::🇴
:::regional indicator symbol letter p::🇵
:::regional indicator symbol letter q::🇶
:::regional indicator symbol letter r::🇷
:::regional indicator symbol letter s::🇸
:::regional indicator symbol letter t::🇹
:::regional indicator symbol letter u::🇺
:::regional indicator symbol letter v::🇻
:::regional indicator symbol letter w::🇼
:::regional indicator symbol letter x::🇽
:::regional indicator symbol letter y::🇾
:::regional indicator symbol letter z::🇿
:::regional indicator a::🇦
:::regional indicator b::🇧
:::regional indicator c::🇨
:::regional indicator d::🇩
:::regional indicator e::🇪
:::regional indicator f::🇫
:::regional indicator g::🇬
:::regional indicator h::🇭
:::regional indicator i::🇮
:::regional indicator j::🇯
:::regional indicator k::🇰
:::regional indicator l::🇱
:::regional indicator m::🇲
:::regional indicator n::🇳
:::regional indicator o::🇴
:::regional indicator p::🇵
:::regional indicator q::🇶
:::regional indicator r::🇷
:::regional indicator s::🇸
:::regional indicator t::🇹
:::regional indicator u::🇺
:::regional indicator v::🇻
:::regional indicator w::🇼
:::regional indicator x::🇽
:::regional indicator y::🇾
:::regional indicator z::🇿
:::ri a::🇦
:::ri b::🇧
:::ri c::🇨
:::ri d::🇩
:::ri e::🇪
:::ri f::🇫
:::ri g::🇬
:::ri h::🇭
:::ri i::🇮
:::ri j::🇯
:::ri k::🇰
:::ri l::🇱
:::ri m::🇲
:::ri n::🇳
:::ri o::🇴
:::ri p::🇵
:::ri q::🇶
:::ri r::🇷
:::ri s::🇸
:::ri t::🇹
:::ri u::🇺
:::ri v::🇻
:::ri w::🇼
:::ri x::🇽
:::ri y::🇾
:::ri z::🇿
:::ri_a::🇦
:::ri_b::🇧
:::ri_c::🇨
:::ri_d::🇩
:::ri_e::🇪
:::ri_f::🇫
:::ri_g::🇬
:::ri_h::🇭
:::ri_i::🇮
:::ri_j::🇯
:::ri_k::🇰
:::ri_l::🇱
:::ri_m::🇲
:::ri_n::🇳
:::ri_o::🇴
:::ri_p::🇵
:::ri_q::🇶
:::ri_r::🇷
:::ri_s::🇸
:::ri_t::🇹
:::ri_u::🇺
:::ri_v::🇻
:::ri_w::🇼
:::ri_x::🇽
:::ri_y::🇾
:::ri_z::🇿
:::[a]::🇦
:::[b]::🇧
:::[c]::🇨
:::[d]::🇩
:::[e]::🇪
:::[f]::🇫
:::[g]::🇬
:::[h]::🇭
:::[i]::🇮
:::[j]::🇯
:::[k]::🇰
:::[l]::🇱
:::[m]::🇲
:::[n]::🇳
:::[o]::🇴
:::[p]::🇵
:::[q]::🇶
:::[r]::🇷
:::[s]::🇸
:::[t]::🇹
:::[u]::🇺
:::[v]::🇻
:::[w]::🇼
:::[x]::🇽
:::[y]::🇾
:::[z]::🇿

; tag characters, see also https://www.unicode.org/charts/PDF/UE0000.pdf
#Hotstring c
:::tag begin::{U+E0001}
:::begin tag::{U+E0001}
:::tag language::{U+E0001}
:::language tag::{U+E0001}
:::tag  ::{U+E0020}
:::tag sp::{U+E0020}
:::tag !::{U+E0021}
:::tag "::{U+E0022}
:::tag #::{U+E0023}
:::tag $::{U+E0024}
:::tag %::{U+E0025}
:::tag &::{U+E0026}
:::tag '::{U+E0027}
:::tag (::{U+E0028}
:::tag )::{U+E0029}
:::tag *::{U+E002A}
:::tag +::{U+E002B}
:::tag ,::{U+E002C}
:::tag -::{U+E002D}
:::tag .::{U+E002E}
:::tag /::{U+E002F}
:::tag 0::{U+E0030}
:::tag 1::{U+E0031}
:::tag 2::{U+E0032}
:::tag 3::{U+E0033}
:::tag 4::{U+E0034}
:::tag 5::{U+E0035}
:::tag 6::{U+E0036}
:::tag 7::{U+E0037}
:::tag 8::{U+E0038}
:::tag 9::{U+E0039}
:::tag :::{U+E003A}
:::tag `;::{U+E003B}  ; semicolon, a special character in ahk, is escaped
:::tag <::{U+E003C}
:::tag =::{U+E003D}
:::tag >::{U+E003E}
:::tag ?::{U+E003F}
:::tag @::{U+E0040}
:::tag A::{U+E0041}
:::tag B::{U+E0042}
:::tag C::{U+E0043}
:::tag D::{U+E0044}
:::tag E::{U+E0045}
:::tag F::{U+E0046}
:::tag G::{U+E0047}
:::tag H::{U+E0048}
:::tag I::{U+E0049}
:::tag J::{U+E004A}
:::tag K::{U+E004B}
:::tag L::{U+E004C}
:::tag M::{U+E004D}
:::tag N::{U+E004E}
:::tag O::{U+E004F}
:::tag P::{U+E0050}
:::tag Q::{U+E0051}
:::tag R::{U+E0052}
:::tag S::{U+E0053}
:::tag T::{U+E0054}
:::tag U::{U+E0055}
:::tag V::{U+E0056}
:::tag W::{U+E0057}
:::tag X::{U+E0058}
:::tag Y::{U+E0059}
:::tag Z::{U+E005A}
:::tag [::{U+E005B}
:::tag \::{U+E005C}
:::tag ]::{U+E005D}
:::tag ^::{U+E005E}
:::tag _::{U+E005F}
:::tag ``::{U+E0060} ; grave, a special character in ahk, is escaped
:::tag a::{U+E0061}
:::tag b::{U+E0062}
:::tag c::{U+E0063}
:::tag d::{U+E0064}
:::tag e::{U+E0065}
:::tag f::{U+E0066}
:::tag g::{U+E0067}
:::tag h::{U+E0068}
:::tag i::{U+E0069}
:::tag j::{U+E006A}
:::tag k::{U+E006B}
:::tag l::{U+E006C}
:::tag m::{U+E006D}
:::tag n::{U+E006E}
:::tag o::{U+E006F}
:::tag p::{U+E0070}
:::tag q::{U+E0071}
:::tag r::{U+E0072}
:::tag s::{U+E0073}
:::tag t::{U+E0074}
:::tag u::{U+E0075}
:::tag v::{U+E0076}
:::tag w::{U+E0077}
:::tag x::{U+E0078}
:::tag y::{U+E0079}
:::tag z::{U+E007A}
:::tag {::{U+E007B}
:::tag |::{U+E007C}
:::tag }::{U+E007D}
:::tag ~::{U+E007E}
:::tag ::{U+E007F}
:::tag del::{U+E007F}
:::tag end::{U+E007F}
:::end tag::{U+E007F}
:::tag cancel::{U+E007F}
:::tag cancel::{U+E007F}
#Hotstring c0

; For some reason, the black flag is the true flag character for flag-tag sequence characters, but the white flag is the flag character for some zwj stylization characters (ie, the rainbow flag).
:::flag::🏴
:::black flag::🏴
:::blackflag::🏴
:::white flag::🏳️
:::whiteflag::🏳️

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
; Regarding the subsequent line: the ` is a special character in ahk (among many, many special characters...), so you have to have two here to represent just one. The code is :`:, for a ̀  (combining grave accent)
:::``::̀
:::grave tone::̀
:::double grave::̏
:::grave below::̖
:::horn::̛
:::hook above::̉
:::hook below left::̡
:::hook below right::̢
:::cedilla::̧
:::,::̧
:::c,::ç
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

; greek
; nota bene: I have the AHK feature turned on where eg :lambda: makes λ, but :Lambda:, and :LAMBDA: make Λ.
:::alpha::α
:::beta::β
:::gamma::γ
:::delta::δ
:::epsilon::ε
:::zeta::ζ
:::eta::η
:::theta::θ
:::iota::ι
:::kappa::κ
:::lambda::λ
:::mu::μ
:::nu::ν
:::xi::ξ
:::omicron::ο
:::pi::π
:::rho::ρ
:::sigma::σ
:::sigma final::ς
:::tau::τ
:::upsilon::υ
:::phi::φ
:::chi::χ
:::psi::ψ
:::omega::ω
;  Archaic local variants
:::digamma::ϝ                  ; U+03DD GREEK SMALL LETTER DIGAMMA
:::heta::ͱ                     ; U+0371 GREEK SMALL LETTER HETA
:::san::ϻ                      ; U+03FB GREEK SMALL LETTER SAN
:::koppa::ϙ                    ; U+03D9 GREEK SMALL LETTER KOPPA
:::tsan::ͷ                     ; U+0377 GREEK SMALL LETTER PAMPHYLIAN DIGAMMA (also used for the identical symbol Tsan)
:::pamphylian digamma::ͷ       ; U+0377 GREEK SMALL LETTER PAMPHYLIAN DIGAMMA
:::sampi::ͳ                    ; U+0373 GREEK SMALL LETTER SAMPI
:::sho::ϸ                      ; U+03F8 GREEK SMALL LETTER SHO
:::stigma::ϛ                   ; U+03DB GREEK SMALL LETTER STIGMA ; which is also digamma I think
; Extra-archaic local variants
:::archaic-koppa::ϟ            ; U+03DF GREEK SMALL LETTER ARCHAIC KOPPA
:::archaic-sampi::ϡ            ; U+03E1 GREEK SMALL LETTER ARCHAIC SAMPI
:::yot::ϳ                      ;U+03F3 GREEK LETTER YOT ; "Yot, a letter used in Greek historical linguistics." — https://en.wiktionary.org/wiki/%CF%B3

; These are slightly related to greek but not really...
:::ou::ȣ ; https://en.wikipedia.org/wiki/Ou_(ligature)
:::omicron upsilon:: 〃
:::small capital ou::ᴕ
:::monograph uk::ꙋ
:::letter uk::ѹ

; ASCII "C0" control characters. See https://en.wikipedia.org/wiki/C0_and_C1_control_codes#C0_controls.
; For these, you must use unicode-style {U+hex} directives in AHK; you cannot use eg {ASC 7} or you will get the • bullet point character of Code page 437 instead of the ASCII bel character. Also note that many systems will not take this input correctly. My text editor, notepad++, seems to take them right, however.
:::nul::{U+0} ; (My text editor could handle me including a literal example of this character easily... but it makes git treat this file like binary ha ha! So, no example here.)
:::soh::{U+1} ; 
:::stx::{U+2} ; 
:::etx::{U+3} ; 
:::eot::{U+4} ; 
:::eno::{U+5} ; 
:::ack::{U+6} ; 
:::bel::{U+7} ; 
:::bs::{U+8} ; 
:::tab::{U+9} ; 	 a true tab character (not an indent made of spaces)
:::lf::{U+A} ; a true, modern newline
:::vt::{U+B} ;  I think this is a vertical tab (whatever that means)
:::formfeed::{U+C} ;  (I would like to make this :ff:, but that's already ﬀ, alas.)
:::cr::{U+D} ; an impostor, old newline component; \r
:::so::{U+E} ; 
:::si::{U+F} ; 
:::dle::{U+10} ; 
:::dc1::{U+11} ; 
:::dc2::{U+12} ; 
:::dc3::{U+13} ; 
:::dc4::{U+14} ; 
:::syn::{U+16} ; 
:::nak::{U+15} ; 
:::etb::{U+17} ; 
:::can::{U+18} ; 
:::em::{U+19} ; 
:::sub::{U+1A} ; 
:::esc::{U+1B} ;  can be useful for terminal coloring!
:::fs::{U+1C} ; 
:::gs::{U+1D} ; 
:::rs::{U+1E} ; 
:::us::{U+1F} ;  — usually the emoji ahk script I have pre-empts this, and makes it 🇺🇸 instead.
:::sp::{U+20} ;   occasionally, very rarely, it's useful to enter a space character without actually pressing space.


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
:::thsp:: 
:::tsp:: 
:::hairspace::{U+200A}
:::hair space::{U+200A}
:::hairsp::{U+200A}
:::hrsp::{U+200A}
:::hsp::{U+200A}
:::nnbsp:: 
:::zwsp::{U+200B}

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

; These next three are combiner keys, but remember: you have to press CapsLock first for chords in this program.
Alt::Edit ; mnemonic: ALTer the program
Ctrl::Run, cmd ; this opens cmd to the carpboard folder, which is nice for me to git commit edits to carpboard ; mnemonic: CONTROL the source code
Shift::Reload ; mnemonic: SHIFT over to the newer version
SC028::SEND ´ ; acute (symbol) (reverse of grave (symbol)) — ie, "fronttick" as opposed to "backtick" ` ; a literal ' was giving me some trouble here, but the scan code SC028 did the trick

; Capslock plus arrow keys sends arrow glyphs.
Left::Send ←
Right::Send →
Up::Send ↑
Down::Send ↓

; Capslock plus jkl; moves the cursor, in a scheme I like to call "almost-vi" mode. But it's actually in the right position lol (could bind these to a hold-a layer in moonlander instead?)
; perhaps caps uiop should be bound to Home PgDn PgUp End... or if in moonlander, perhaps bind them to jkl; on a hold-s layer.
; caps m and / could be backspace and del (,. would be fine for "delete next/prev line", but there are no such keys! nor other general way to trigger those behaviors, I suppose) or a hold-d layer in moonlander (pleasing, because d sounds like delete, which these things do).
j::Left
k::Down
l::Up
`;::Right ; ` is an escape character in ahk (otherwise ; would start a comment)

a::SEND ∝ ; proportionality
b::SEND ♪ ; eighth note (to demonstrate music)
c::SEND ¢ ; cents
d::SEND ∂ ; partial derivative
e::SEND ∈ ; element of
h::SEND ʰ ; aspiration mark
i::SEND ı ; the dotless i, the abomination
g::SEND ŋ ; ng letter (voiced velar nasal) "eng"
m::SEND — ; em dash
n::SEND – ; en dash
o::SEND ° ; degree
p::SEND ¶ ; this is a pilcrow. for some reason notepad displays it as ❡
q::SEND ― ; quotation dash (horizontal bar)
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
Space::SEND █
.::SEND ∴ ; therefore
,::SEND ∵ ; because
-::SEND ± ; plus or minus

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

Alt & `::SEND ã ; a with tilde from portuguese (` is the same key as ~ and writing ~ here doesn't work)
Alt & a::SEND ä ; a umlaut/diaeresis (lower case, you can shift-insert to uppercase remember?)
Alt & e::SEND ë ; e diaeresis
Alt & f::SEND 「 ; left quotation mark japanese ; If I could figure out how to get caps-alt-shift to work I would make that 『 ; japanese inner quotation mark begin
Alt & i::SEND ï ; i diaeresis
Alt & j::SEND 」 ; right quotation mark japanese; If I could figure out how to get caps-alt-shift to work I would make that 』 ; japanese inner quotation mark end
Alt & l::SEND ł ; slashed l
Alt & o::SEND ö ; o umlaut/diaeresis
Alt & u::SEND ü ; u umlaut/diaeresis
Alt & /::SEND ø ; slashed o
Alt & s::SEND ſ ; long s
Alt & n::SEND ñ ; enye (n with tilde from spanish) (lower case, you can shift-insert to uppercase remember?)
Alt & -::SEND ⹀ ; double hyphen
Alt & 0::SEND ∞ ; infinity
Alt & !::SEND ‽ ; interrobang ; This is probably a bad binding because you actually have to hit 1 with the shift off... but plain caps and caps+shift were taken with good reason, and afaict I can't caps+alt+shift
Alt & 3::SEND ɛ ; ipa vowel for e in dress
Alt & $::SEND ¤ ; generic currency sign
Alt & ^::SEND ↑ ; up arrow
Shift & V::Send ↓ ; down arrow
Alt & *::SEND ⋅ ; dot (multiply)
Alt & b::SEND • ; bullet (typography)
Alt & h::SEND ◦ ; hollow bullet (typography)
Ctrl & /::SEND ／; U+FF0F Fullwidth Solidus (useful for use in windows filenames where regular / is not allowed) ; for some reason I can't get this to work, nor can I get Alt & / to print this. n-key rollover issue?
; Shift & Alt & b::SEND ◦ ; hollow bullet (typography)

; Capslock+Alt+Shift+something ... doesn't seem to work right now
!+n::SEND ɲ
; todo: would be fun to also be able to send ɳ. ŋ is already covered, by Caps+g

Alt & Space::SEND % respace(Clipboard) ; respace text with random spaces in, like in a pdf or fixed-width ascii document
Alt & SC028::SEND % "{ASC 34}" . respace(Clipboard) . "{ASC 34}" ; respace and quote text (34 is ascii code for double quote)
Alt & y::SEND % "{ASC 34}" . respace(stripTimestamps(Clipboard)) . "{ASC 34}" ; strip youtube timestamps, respace, and quote text
Insert::SENDINPUT % ToFilename(Clipboard)
Alt & Insert::SENDINPUT % ToLower(Clipboard)
Alt & D::SENDINPUT %A_DDD%, %A_YYYY%-%A_MM%-%A_DD% %A_Hour%:%A_Min%:%A_Sec% ; current date/time ; Mon, 2020-01-13 08:21:01
Ctrl & D::SENDINPUT %A_YYYY%-%A_MM%-%A_DD% ; current date ; 2020-01-13
Alt & V::msgbox You are using Carpboard version (untracked version) under AutoHotKey version %A_AhkVersion%
Alt & W::run https://en.wikipedia.org/wiki/Special:Search
!t::InputBox url, "Open URL", "Enter the URL you want to open:" && run url ; todo: figure this out, and I guess commit to either AHK v1 or v2
;Alt & T::run InputBox, "Search wiktionary").Value

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
Shift & J::SEND ʲ ; https://en.wikipedia.org/wiki/Palatalization_(phonetics)
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
Shift & <::SEND ⟨ ; angle bracket left
Shift & >::SEND ⟩ ; angle bracket right
Shift & SC028::SEND ” ; fancy right double quote ; sc028 in place of a literal " or '
Shift & {::SEND ‘ ; fancy left single quote
Shift & }::SEND ’ ; fancy right single quote
Shift & SC035::SENDINPUT ¿ ; inverted question mark ; sc035 in place of a literal ? or /
Shift & Space::SEND ░ ; Light shade ; figure out how to send ▒ (medium shade) with a good key combo
Shift & ^::SEND ∧ ; logical and
Shift & *::SEND • ; bullet (typography)
Shift & |::SEND ⊢ ; turnstile (useful in logic)
Shift & 3::SEND № ; numero sign (similar use to the number sign, #, which is above 3, and I can't write a literal # in here because it's a ahk modifier)
Shift & 7::SEND ⅋ ; turned ampersand (& is above 7)
Shift & %:: SEND ÷ ; division sign
Shift & $::SEND £ ; pound sterling
Shift & 0::SEND ∞ ; infinity

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
  tmp := RegExReplace(tmp, "\$(\d*)\.(\d*)", Replacement := " $1 dollars $2 cents ")
  tmp := RegExReplace(tmp, "\$(\d*)", Replacement := " $1 dollars ")
  tmp := StrReplace(tmp, ".", " ")
  tmp := RegExReplace(tmp, "\s+", Replacement := " ")
  tmp := RegExReplace(tmp, "[^\w\ \-]", "") ; this is bad at dealing with non-ascii (or something) text (it just destroys it), which is not ideal.
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