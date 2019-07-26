; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strrchr.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/13 14:12:54 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/25 13:57:15 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

; char	*ft_strrchr(const char *s, int c)

global _ft_strrchr

_ft_strrchr:
	mov rax, 0
	test rdi, rdi; Need to secure the ptr in arg
	jz return
	mov dl, byte[rdi]
	test dl, dl ; Compare value of *ptr to zero
	jz str_eol
	cmp dl, sil  ; Compare value of *ptr to c
	je found
	inc rdi
	jmp _ft_strrchr

str_eol:
	test sil, sil ; See if searched value is '\0'
	jnz return

found:
	mov rax, rdi

return:
	ret
