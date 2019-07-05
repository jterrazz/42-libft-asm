; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 22:45:16 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 01:14:17 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen

_ft_strlen:
	xor rcx, rcx ; 0
	xor al, al ; 0
	not rcx ; with unsigned, exc hold the highest value possible

	; go throught the rdi str until al value is found, decreasing ecx each step
	cld
	repne scasb

	; now ecx equals - strlen - 2 (1 because not made it overflow, 1 because it counts finding null as a step)
	not rcx ; Reverse it and substract 1
	dec rcx;
	mov rax, rcx;
	ret
