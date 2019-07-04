; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 22:08:53 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 00:11:54 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_tolower

extern _ft_isupper

_ft_tolower:
	call _ft_isupper
	test rax, rax
	mov rax, rdi
	jz return
	add rax, 32

return:
	ret
