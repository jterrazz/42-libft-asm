; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/05 01:00:27 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 02:33:06 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

; Maybe secure ptrs, not an obligation

global _ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_memcpy

_ft_strdup:
	enter 0, 0
	test rdi, rdi
		jz return
	push rdi
	call _ft_strlen
	inc rax
	push rax

malloc:
	mov rdi, rax
	xor rax, rax
	call _malloc
	test rax, rax ; Secure malloc
	jz return

cpy_str:
	mov rdi, rax ; dst
	pop rdx ; length
	pop rsi ; src
	push rdi
	call _ft_memcpy
	; TODO Set last value to 0
	pop rdi

return:
	mov rax, rdi
	leave
	ret
