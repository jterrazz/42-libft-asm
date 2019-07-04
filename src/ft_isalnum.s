; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 21:39:47 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 00:11:08 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isalnum

extern _ft_isalpha
extern _ft_isdigit

_ft_isalnum:
	call _ft_isalpha
	test rax, rax
	jnz is_alnum
	call _ft_isdigit
	test rax, rax
	jnz is_alnum

is_not_alnum:
	xor rax, rax
	ret

is_alnum:
	mov rax, 1
	ret
