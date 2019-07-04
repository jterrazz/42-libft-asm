; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 20:19:14 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/05 00:11:00 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_bzero

_ft_bzero:
	test rsi, rsi ; Set ZF to test count in not 0
	jz end
	mov byte[rdi], 0
	inc rdi
	dec rsi
	jmp _ft_bzero

end:
	ret
