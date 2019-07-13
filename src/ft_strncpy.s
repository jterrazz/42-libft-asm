; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncpy.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/13 14:48:19 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/13 15:29:51 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strncpy

; char	*ft_strncpy(char *dst, const char *src, size_t len)

_ft_strncpy:
	mov r12, 0

copy_str:
	; While *src copy into dst, and i++
	mov r8b, byte[rsi]
	test r8b, r8b
	jz fill_blank
	cmp r12, rdx
	jge fill_blank
	mov r9b, byte[rsi]
	mov byte[rdi], r9b
	inc rdi
	inc rsi
	inc r12
	jmp copy_str

fill_blank:
	; While i < len
	cmp r12, rdx
	jge return
	mov byte[rdi], 0
	inc rdi
	inc r12
	jmp fill_blank

return:
	ret
