/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_puts.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/05 00:07:24 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"
#include "stdio.h"

void test_ft_puts()
{
	int a;
	int b;
	int c;

	a = ft_puts("This phrase should be printed");
	b = ft_puts("The next one is null");
	c = ft_puts(NULL);

	assert(a != 0);
	assert(b != 0);
	assert(c != 0);
}
