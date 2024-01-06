#If WinActive("ahk_exe MathType.exe")
^c::
	SendInput, ^c
	Sleep 500
	;ToolTip %clipboard%
	RegExMatch(Clipboard, "\[(.*)\]", matches)
	length := StrLen(matches)
    str := SubStr(matches, 2,length-3)
	str1:="`$"
Clipboard :=str1 . str . str1
return

^x::
	SendInput, ^c
	Sleep 500
	;ToolTip %clipboard%
	RegExMatch(Clipboard, "\[(.*)\]", matches)
	length := StrLen(matches)
    str := SubStr(matches, 2,length-3)
	str1:="`\begin`{equation`}`n"
	str2:="`n`\end`{equation`}"
Clipboard :=str1 . str . str2
return


#If WinActive("ahk_exe TeXstudio.exe")
^a::
str1:="`\textsuperscript`{`\cite`{2022Quantum`}`}"
str2:="{{}`\cite{{}{}}{}}"
str3:=str1 . str2
Send, %str3%
return
