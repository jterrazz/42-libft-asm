; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 21:33:57 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/04 21:47:55 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isdigit

_ft_isdigit:
cmp rdi, '0'
jl is_not_digit
cmp rdi, '9'
jg is_not_digit

is_digit:
mov rax, 1
ret

is_not_digit:
xor rax, rax
ret
