; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putnbr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/13 17:47:05 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/13 19:45:51 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_putnbr

extern _ft_puts
extern _putchar ;rmv

section .rodata
	INT_MIN db "-2147483648"

section .text
_ft_putnbr:
	enter 0, 0
	mov r12, 0
	cmp edi, -2147483648
	je print_min

is_neg:
	cmp edi, 0
	jge prep_algo

	; enter 0, 0
	; add rdi, '-'
	; call _putchar
	; leave

	imul edi, -1

prep_algo:
	mov rax, rdi ; for div
	mov rbx, 10 ; for div

algo:
	mov rdx, 0
	div ebx
	push rdx

	enter 0, 0
	add rdx, '0'
	mov rdi, rdx
	call _putchar
	leave

	inc r12
	cmp rdx, 0
	jle print_chars
	jmp algo

print_chars:
; 	pop rdi
; 	dec r12
print_char:
	; test r12, r12
	; jz return
	; pop rdi
	;
	; enter 0, 0
	; add rdi, '0'
	; call _putchar
	; leave
	;
	; dec r12
	; test r12, r12
	; jz return
	; jmp print_char

print_min:
	lea rdi, [rel INT_MIN]
	call _ft_puts

return:
	leave
	ret
