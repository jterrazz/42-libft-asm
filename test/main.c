/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/27 20:47:31 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/27 20:49:52 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

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
	test_ft_bzero();
	test_ft_isalpha();
	test_ft_isupper();
	test_ft_islower();
	test_ft_isdigit();
	test_ft_isalnum();
	test_ft_isascii();
	test_ft_isprint();
	test_ft_toupper();
	test_ft_tolower();
	test_ft_strlen();
	test_ft_puts();
	test_ft_memset();
	test_ft_memcpy();
	test_ft_strdup();
	test_ft_memalloc();
	test_ft_strcat();
	test_ft_putnbr();
	test_ft_memdel();
	test_ft_memmove();
	test_ft_strncpy();
	test_ft_strrchr();
	test_ft_cat(argc, argv);
}
