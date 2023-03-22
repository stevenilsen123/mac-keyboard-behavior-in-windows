; This script assumes that Alt and Ctrl characters have been swapped using a third-party tool

; -----KEY GUIDE-----
; # Win. (the key with the Windows logo) therefore `Send #e` would hold down Win and then press E.
; + Shift. For example, `Send, +abC` would send the text "AbC", and `Send, !+a` would press Alt+Shift+A.
; ^ Alt (because of remapkey). For example, `Send, This is text!a` would send the keys "This is text" and then press Alt+A. Note: !A produces a different effect in some programs than !a. This is because !A presses Alt+Shift+A and !a presses Alt+A. If in doubt, use lowercase.
; ! Ctrl (because of remapkey). For example, `Send, ^!a` would press Ctrl+Alt+A, and Send, ^{Home} would send Ctrl+Home. Note: ^A produces a different effect in some programs than ^a. This is because ^A presses Ctrl+Shift+A and ^a presses Ctrl+A. If in doubt, use lowercase.Sends Ctrl. For example, Send, ^!a would press Ctrl+Alt+A, and Send, ^{Home} would send Ctrl+Home. Note: ^A produces a different effect in some programs than ^a. This is because ^A presses Ctrl+Shift+A and ^a presses Ctrl+A. If in doubt, use lowercase.
; & An ampersand may be used between any two keys or mouse buttons to combine them into a custom hotkey.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Uncomment for key history
; #InstallKeybdHook
; KeyHistory

; App and tab switching
Ctrl & Tab::AltTab
!Tab::Send ^{Tab}

; Quit the active app
^q::Send, !{f4}

; Insertion point movement
^Left::
    Suspend, On
    Send, {Home}
    Suspend, Off
return
^Right::
    Suspend, On
    Send, {End}
    Suspend, Off
return
^Up::
    Suspend, On
    Send, ^{Home}
    Suspend, Off
return
^Down::
    Suspend, On
    Send, ^{End}
    Suspend, Off
return
+^Left::
    Suspend, On
    Send, +{Home}
    Suspend, Off
return
+^Right::
    Suspend, On
    Send, +{End}
    Suspend, Off
return
+^Up::
    Suspend, On
    Send, +^{Home}
    Suspend, Off
return
+^Down::
    Suspend, On
    Send, +^{End}
    Suspend, Off
return
#Left::
    Suspend, On
    Send, ^{Left}
    Suspend, Off
return
#Right::
    Suspend, On
    Send, ^{Right}
    Suspend, Off
return
+#Left::
    Suspend, On
    Send, +^{Left}
    Suspend, Off
return
+#Right::
    Suspend, On
    Send, +^{Right}
    Suspend, Off
return