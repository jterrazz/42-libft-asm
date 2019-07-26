; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strrchr.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/13 14:12:54 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/26 21:58:34 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

; char	*ft_strrchr(const char *s, int c)

global _ft_strrchr

_ft_strrchr:
	mov rax, 0

compare:
	mov dl, byte[rdi]
	test dl, dl
	jz end_of_str
	cmp dl, sil  ; Compare value of *ptr to c
	jne next_char

found:
	mov rax, rdi

next_char:
	inc rdi
	jmp compare

end_of_str:
	test sil, sil ; See if searched value is '\0'
	jnz return
	mov rax, rdi

return:
	ret
