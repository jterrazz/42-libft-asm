/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/13 14:49:32 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/13 15:14:43 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_strncpy()
{
	char *a = ft_strdup("123");
	char *b = "aaa";

	ft_strncpy(a, b, 2);
	assert(a[0] == 'a');
	assert(a[1] == 'a');
	assert(a[2] == '3');

	char *c = ft_strdup("123");
	char *d = "";
	ft_strncpy(c, d, 2);
	assert(c[0] == 0);
	assert(c[1] == 0);
	assert(c[2] == '3');
}
