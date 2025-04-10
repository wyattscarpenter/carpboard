; Probably requires AHK v1, although i haven't tested that
; 🤖🐋 ahk script where when a is held down, jkl; sends left down up right arrow keys

;todo: commit this into carpboard, then shift it to be jkl; capslock chords instead.

#SingleInstance, force

a::
    a_pressed_time := A_TickCount  ; Record when 'a' was pressed
return

;even though this kind of does what i want, it actually trips me up during typing, which includes more al overlapping sequences than you might naively expect, and so forth. So this might need to transition to capslock, or just be a moonlander-only feature.

a up::
    if (A_TickCount - a_pressed_time < 200)  ; If held < 200ms, send 'a'
        Send {Blind}a  ; Preserves Shift/Ctrl/Alt states
return

#If GetKeyState("a", "P")  ; Only activate when 'a' is physically held
    j::Left
    k::Down
    l::Up
    `;::Right
#If
