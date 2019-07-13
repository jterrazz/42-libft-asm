; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memmove.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/13 16:15:22 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/13 16:39:59 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

; void			*ft_memmove(void *dst, const void *src, size_t len);

global _ft_memmove
extern _ft_memcpy

_ft_memmove:
	mov rax, rdi
	cmp rdi, rsi
	je return
	jl dst_before_src

dst_after_src:
	cmp rdx, 0
	jl return
	mov r8b, byte[rsi + rdx]
	mov byte[rdi + rdx], r8b
	dec rdx
	jmp dst_after_src

dst_before_src:
	call _ft_memcpy

return:
	ret
