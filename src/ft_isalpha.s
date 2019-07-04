; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 20:19:03 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 00:11:14 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isalpha

extern _ft_isupper
extern _ft_islower

_ft_isalpha:
	call _ft_isupper
	test rax, rax
	jnz is_alpha
	call _ft_islower
	test rax, rax
	jnz is_alpha

is_not_alpha:
	xor rax, rax
	ret

is_alpha:
	mov rax, 1
	ret
