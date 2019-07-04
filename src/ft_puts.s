; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 22:25:13 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 00:11:43 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_puts

extern _ft_strlen

section .rodata

SYS_WRITE: equ 0x2000004
STDOUT: equ 1
LR_MSG: db 0x0a
LR_MSG_LEN: equ 1
NULL_MSG: db "(null)"
NULL_MSG_LEN: equ 6

section .text

_ft_puts:
	test rdi, rdi
	jz puts_null

puts:
	push rdi
	call _ft_strlen
	mov rdx, rax
	pop rdi
	mov rax, SYS_WRITE
	mov rsi, rdi
	mov rdi, STDOUT
	syscall
	jmp put_lr

puts_null:
	mov rax, SYS_WRITE
	lea rsi, [rel NULL_MSG]
	mov rdi, STDOUT
	mov rdx, NULL_MSG_LEN
	syscall

put_lr:
	mov rax, SYS_WRITE
	lea rsi, [rel LR_MSG]
	mov rdi, STDOUT
	mov rdx, LR_MSG_LEN
	syscall
	ret
