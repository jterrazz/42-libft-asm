/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/13 14:49:32 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/26 22:03:37 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"
#include <stdio.h>//rem
void test_ft_memmove()
{
	char *a = ft_strdup("012345");
	char *b = ft_strdup("aaaa");
	// move before and after ptr

	ft_memmove(a, b, 5);
	assert(a[0] == 'a');
	assert(a[1] == 'a');
	assert(a[2] == 'a');
	assert(a[3] == 'a');
	assert(a[4] == 0);

	char *c = ft_strdup("01234This is a sentence");
	ft_memmove(c, c + 5, 6);
	assert(c[0] == 'T');
	assert(c[5] == 'i');

	char *d = ft_strdup("This is a sentence01234");
	ft_memmove(d + 5, d, 17);
	assert(d[22] == 'e');
	assert(d[5] == 'T');
}
