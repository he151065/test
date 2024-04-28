;open_notepad.exe
section .text
	global _start
	
_start:
	push ebp
	mov ebp,esp
	;sub esp,24h

	xor edx, edx
	push edx		; null termination
	
	push 0x6578652e
	push 0x64617065
	push 0x746f6e5c
	push 0x32336d65
	push 0x74737953
	push 0x5c73776f
	push 0x646e6957
	push 0x5c3a4390
	mov esi, esp   
	inc esi				; esi -> "C:\\Windows\\System32\\notepad.exe"

	mov eax, 0x767a51b0
	push 10  ; window state SW_SHOWDEFAULT
	push esi ; "C:\Windows\System32\calc.exe"
	call eax ; WinExec
	
	;add esp,24h
	leave
	ret