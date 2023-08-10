
.model small

.stack 100h

.data

.code
 
MOV AX,27           ;Valid
;MOV AL,97Fh        Invalid because in AL we store max value 255 in decimal but in this case our value in decimal is 2431.
MOV SI,9516         ;Valid
MOV DS,BX           ;Valid
MOV BX,CS           ;Valid
;MOV AX,23FB9h      Invalid because in AX we store max value 510 in decimal but in this case our value in decimal is 147385. 
;MOV DS,BH          Invalid because size issue of BH (8-bit) cannot store in DS (16-bit)
;MOV DS,9BF2        Invalid because in decimal value range is 0 to 9 but in this case we store hexadecimal number in the form of decimal which is not correct and also we cannot directly store value in segment registers.
;MOV CS,3490        Invalid because we cannot store directly value in segment registers.
;MOV DS,ES          Invalid because segment to segment value not allowed.
MOV ES,BX           ;Valid
                                                                                                                                                                                       
 
.exit





