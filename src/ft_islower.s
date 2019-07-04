; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 20:28:32 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 00:11:24 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_islower

_ft_islower:
	cmp rdi, 'a'
	jl is_not_lower
	cmp rdi, 'z'
	jg is_not_lower

is_lower:
	mov rax, 1
	ret

is_not_lower:
	xor rax, rax
	ret
