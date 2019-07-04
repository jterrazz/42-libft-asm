; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 21:54:43 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 00:11:18 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isascii

_ft_isascii:
	cmp rdi, 177
	jg is_not_ascii

is_ascii:
	mov rax, 1
	ret

is_not_ascii:
	xor rax, rax
	ret
