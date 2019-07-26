; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 22:45:16 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/27 01:12:57 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen

_ft_strlen:
	xor al, al ; Will search for value 0
	xor rcx, rcx ; Will receive the length, set to 0
	not rcx ; Because rcx is unsigned, using not will set it max value

	cld
	repne scasb ; Parse rsi until is al value, it decrease ecx each step

	; Now ecx = - strlen - 2
	; (1 for the overflow, 1 because the last value searched counts)
	not rcx
	dec rcx
	mov rax, rcx;
	ret
