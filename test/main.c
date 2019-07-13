#include "./test.h"
#include <stdio.h>

int assert(int cond)
{
	if (cond) {
		printf("Success\n");
		return 1;
	}
	printf("Failure\n");
	return 0;
}

int main(int argc, char **argv)
{
	(void)argc;
	(void)argv;
	// test_ft_bzero();
	// test_ft_isalpha();
	// test_ft_isupper();
	// test_ft_islower();
	// test_ft_isdigit();
	// test_ft_isalnum();
	// test_ft_isascii();
	// test_ft_isprint();
	// test_ft_toupper();
	// test_ft_tolower();
	// test_ft_strlen();
	// test_ft_puts();
	// test_ft_memset();
	// test_ft_memcpy();
	// test_ft_strdup();
	// test_ft_cat();
	// test_ft_memalloc();
	test_ft_memmove();
	// test_ft_strncpy();
	// test_ft_strrchr();
}
