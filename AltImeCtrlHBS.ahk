#Requires AutoHotkey v2.0
#SingleInstance Force

; ========= IME 制御 =========
#Include IMEv2.ahk

; ========= CapsLock / Ctrl 関連 =========

; 起動時に一応 CapsLock をOFFにしておく（好み）
SetCapsLockState "Off"

; ========= Ctrl + H で Backspace =========

^h:: {
    Send "{Backspace}"
}

; ========= Alt 空打ちで IME ON / OFF =========

; Alt 単押しでメニューバーにフォーカスが飛ぶのを防ぐおまじない
*~LAlt:: {
    Send "{Blind}{vk07}"
}
*~RAlt:: {
    Send "{Blind}{vk010}"
}

; 左Alt 空打ち → IME OFF（英数）
~LAlt up:: {
    if (A_PriorKey = "LAlt") {
        IME_SET(0) ; 0 = IME OFF（英数）
    }
}

; 右Alt 空打ち → IME ON（かな）
~RAlt up:: {
    if (A_PriorKey = "RAlt") {
        IME_SET(1) ; 1 = IME ON（かな）
    }
}
