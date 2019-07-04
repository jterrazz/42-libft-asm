; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 22:03:21 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/04 22:08:20 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isprint

_ft_isprint:
cmp rdi, 40
jl is_not_print
cmp rdi, 164
jg is_not_print

is_print:
mov rax, 1
ret

is_not_print:
xor rax, rax
ret
