global _ft_bzero

_ft_bzero:
test rsi, rsi ; Set ZF to test count in not 0
jz end
mov byte[rdi] 0
inc rdi
dec rsi
jmp _ft_bzero

end:
ret
