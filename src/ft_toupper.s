; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 22:08:53 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/04 22:24:30 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_toupper

extern _ft_islower

_ft_toupper:
call _ft_islower
test rax, rax
mov rax, rdi
jz return
sub rax, 32

return:
ret
