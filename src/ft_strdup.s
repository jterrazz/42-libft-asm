; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/05 01:00:27 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/27 20:38:10 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_memcpy

_ft_strdup:
	enter 0, 0
	push rdi
	call _ft_strlen
	inc rax
	push rax

malloc:
	mov rdi, rax
	call _malloc
	test rax, rax
	jz return

cpy_str:
	mov rdi, rax ; arg0: dst
	pop rdx ; arg2: length
	pop rsi ; arg1: src
	push rdi
	call _ft_memcpy
	pop rax

return:
	leave
	ret
