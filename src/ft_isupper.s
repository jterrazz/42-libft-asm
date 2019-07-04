; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 20:27:47 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/04 21:48:08 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isupper

_ft_isupper:
cmp rdi, 'A'
jl is_not_upper
cmp rdi, 'Z'
jg is_not_upper

isupper:
mov rax, 1
ret

is_not_upper:
xor rax, rax
ret
