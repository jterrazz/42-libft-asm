; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putnbr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/13 17:47:05 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/14 01:44:24 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_putnbr

extern _ft_puts

section .rodata
	MIN_SIGN: db "-", 0
	INT_MIN: db "-2147483648"
	INT_MIN_LENGTH: equ 11
	SYS_WRITE: equ 0x2000004
	STDOUT: equ 1

section .data
	PRINT_CHAR: db "q", 0

section .text
_ft_putnbr:
	enter 0, 0
	cmp edi, -2147483648
	je print_min

is_neg:
	cmp edi, 0
	jge prep_algo

	push rsi
	push rdx
	push rax
	push rdi
	lea rsi, [rel MIN_SIGN]
	mov rdx, 1
	mov rax, SYS_WRITE
	mov rdi, STDOUT
	syscall

	pop rdi
	pop rax
	pop rdx
	pop rsi

	imul edi, -1

prep_algo:
	mov r12, 0 ; count chars
	mov rax, rdi ; for div
	mov rbx, 10 ; for div

algo:
	mov rdx, 0 ; result
	div rbx
	push rdx
	push rax
	pop rax
	inc r12
	test rax, rax
	jz print_char
	jmp algo

print_char:
	test r12, r12
	jz return

	pop rsi
	add rsi, '0'
	mov byte[rel PRINT_CHAR], sil
	lea rsi, [rel PRINT_CHAR]
	mov rdx, 1
	mov rax, SYS_WRITE
	mov rdi, STDOUT
	syscall

	dec r12
	jmp print_char

print_min:
	lea rsi, [rel INT_MIN]
	mov rdx, INT_MIN_LENGTH
	mov rax, SYS_WRITE
	mov rdi, STDOUT
	syscall

return:
	leave
	ret
