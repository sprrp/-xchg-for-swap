
Include Irvine32.inc


 .data
 arrayName BYTE "SCC-212 is fun!",13,10,0
 

.code
main proc
    ;change msg (using xchg and mov) so it is “CSC-221 is fun!”
	;Step1: copy (mov) the first character you want to swap into a register (use correct size e.g AL).
	mov al,  arrayName
	
	
	;Step 2 Then exchange it with a character in the array so it is in the correct position.
	
	xchg al, arrayName[1]
	xchg al, arrayName[0]
	xchg al, arrayName[6]
	xchg al, arrayName[5]
	xchg al, arrayName[6]

	;Step 3: Copy (mov) the character that is now in the register in to the correct position.
	
	; mov al,arrayName
	
	
	;tep 4: Print out the string
	
	mov edx, OFFSET arrayName
	call WriteString
	
	exit
main ENDP
END main	