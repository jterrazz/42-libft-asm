; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memdel.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/13 17:32:10 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/13 17:44:45 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_memdel

extern _free

_ft_memdel:
	enter 0, 0
	mov r12, rdi
	mov rdi, qword[rdi]
	call _free
	mov qword[r12], 0
	leave
	ret
