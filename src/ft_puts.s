; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/07/04 22:25:13 by jterrazz          #+#    #+#              ;
;    Updated: 2019/07/04 22:44:22 by jterrazz         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_puts

extern _ft_strlen

SYS_WRITE equ 0x2000004
STDOUT equ 1
LR_MSG_LEN equ 1
NULL_MSG_LEN equ 6

section .rodata

lr_msg: db "\n"
null_msg: db "(null)"

section .text

_ft_puts:
test rdi, rdi ; Not sure
jz puts_null
mov rax, SYS_WRITE
mov rsi, rdi
mov rdi, STDOUT
mov rdx, msglen
jmp put_lr

puts_null:
mov rax, SYS_WRITE
mov rsi, null_msg
mov rdi, STDOUT
mov rdx, NULL_MSG_LEN
syscall

put_lr:
mov rax, SYS_WRITE
mov rsi, lr_msg
mov rdi, STDOUT
mov rdx, LR_MSG_LEN
syscall
ret
