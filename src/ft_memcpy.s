; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/05 00:49:43 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 01:14:36 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_memcpy

_ft_memcpy:
	push rdi
	mov rcx, rdx ; same register params expect length
	cld
	rep movsb
	pop rax
	ret
