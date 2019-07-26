; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/05 02:36:42 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/26 21:20:38 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_cat

section .rodata
SYS_READ equ 0x2000003
SYS_WRITE equ 0x2000004
STDOUT equ 1

section .data
BUFFER times 255 db 0
.SIZE equ $ - BUFFER ; Size of the buffer by substracting addresses

section .text

_ft_cat:
	enter 0, 0

read:
	push rdi
	mov rax, SYS_READ
	lea rsi, [rel BUFFER]
	mov rdx, BUFFER.SIZE
	syscall
	cmp rax, 0
	jle return

write:
	mov rdi, STDOUT
	lea rsi, [rel BUFFER]
	mov rdx, rax
	mov rax, SYS_WRITE
	syscall

needs_more_read:
	cmp rax, 0
	jl return
	pop rdi
	jmp read

return:
	pop rdi
	leave
	ret
