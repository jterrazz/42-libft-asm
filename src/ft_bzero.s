; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 20:19:14 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/26 20:57:12 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_bzero

_ft_bzero:
test_size:
	test rsi, rsi
	jz end

move_data:
	mov byte[rdi], 0
	inc rdi
	dec rsi
	jmp _ft_bzero

end:
	ret
