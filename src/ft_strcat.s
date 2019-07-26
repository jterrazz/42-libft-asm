; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/26 20:15:00 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/26 20:51:24 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcat

section .text

_ft_strcat:
	mov rax, rdi

go_to_s1_end:
	mov dl, byte[rdi]
	test dl, dl
	jz copy_s2_to_s1
	inc rdi
	jmp go_to_s1_end

copy_s2_to_s1:
	mov dl, byte[rsi]
	test dl, dl
	jz terminate_str
	mov dl, byte[rsi]
	mov byte[rdi], dl
	inc rdi
	inc rsi
	jmp copy_s2_to_s1

terminate_str:
	mov byte[rdi], 0

return:
	ret
