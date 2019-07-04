; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/05 00:14:22 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 00:48:36 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_memset

_ft_memset:
	push rdi
	mov al, sil
	mov rcx, rdx
	cld
	rep stosb
	pop rax
	ret
