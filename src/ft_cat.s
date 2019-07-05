; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/05 02:36:42 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 13:26:11 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_cat

section .rodata
SYS_READ equ 0x2000003
SYS_WRITE equ 0x2000004
STDOUT equ 1

section .bss
BUFFER resb 255 ; reserve bytes
.SIZE equ $ - BUFFER ; learn more of this, probably does diff between addresses to get length

section .text

_ft_cat:
	enter 0, 0

read:
	push rdi ; fd
	mov rax, SYS_READ ; read cmd
	lea rsi, [rel BUFFER] ; address
	mov rdx, BUFFER.SIZE ; length
	syscall
	jc return
	; jc return; why ?
	cmp rax, 0 ; rax -1 if error, 0 if end
	jle return

write:
	mov rdi, STDOUT
	lea rsi, [rel BUFFER]
	mov rdx, rax
	mov rax, SYS_WRITE
	syscall
	jc return
	cmp rax, 0
	jl return
	pop rdi
	jmp read

return:
	pop rdi
	leave
	ret
