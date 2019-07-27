#ifndef TEST_H
# define TEST_H

# include "../inc/libft_asm.h"

int		assert(int cond);

void	test_ft_strcat();
void	test_ft_bzero();
void	test_ft_isalpha();
void	test_ft_isupper();
void	test_ft_islower();
void	test_ft_isdigit();
void	test_ft_isalnum();
void	test_ft_isascii();
void	test_ft_isprint();
void	test_ft_toupper();
void	test_ft_tolower();
void	test_ft_strlen();
void	test_ft_puts();
void	test_ft_memset();
void	test_ft_memcpy();
void	test_ft_strdup();
void	test_ft_strrchr();
void	test_ft_strncpy();
void	test_ft_memalloc();
void	test_ft_memmove();
void	test_ft_memdel();
void	test_ft_putnbr();
int		test_ft_cat(int argc, char **argv);

#endif
