#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.




#MaxThreadsPerHotkey 3
*f3::				;Press F3 to trigger the bot
#MaxThreadsPerHotkey 1
If SpamLoop {
    SpamLoop := False
    return
}
SpamLoop := True
Loop {                      
    Loop 1 {                
        SendInput pls beg   
        SendInput {Enter}
        Sleep, 000
        if not SpamLoop
            break
    }
    Sleep, 65005             ; How long in milliseconds it will wait before it starts sending messages again, 65005 is optimal because a delay is required otherwise the code will be off by- 
    if not SpamLoop          ;-some miliseconds and you wont be able to beg lol
        break
}
