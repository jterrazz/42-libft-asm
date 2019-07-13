; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memalloc.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/13 15:28:29 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/13 16:08:54 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

 global _ft_memalloc

 extern _malloc

 _ft_memalloc:
    mov r12, rdi
    enter 0, 0
    mov rdi, 1
    call _malloc
    leave
    test rax, rax
    jz return
    mov r13, rax

null_memory:
    test r12, r12
    jz return
    mov byte[r13], 0
    inc r13
    dec r12
    jmp null_memory

return:
    ret
