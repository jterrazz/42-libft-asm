; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncpy.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/13 14:48:19 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/27 01:44:15 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strncpy

_ft_strncpy:
	mov r12, 0

copy_str:
	; While *src copy into dst, and i++
	mov r8b, byte[rsi]
	test r8b, r8b ; *src == 0
	jz fill_blank
	cmp r12, rdx ; i == size
	jge fill_blank
	mov r9b, byte[rsi]
	mov byte[rdi], r9b
	inc rdi
	inc rsi
	inc r12
	jmp copy_str

fill_blank:
	; While i < size, set to 0
	cmp r12, rdx
	jge return
	mov byte[rdi], 0
	inc rdi
	inc r12
	jmp fill_blank

return:
	ret
