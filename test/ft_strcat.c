/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcat.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/26 20:53:00 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"
#include <string.h>
#include <stdlib.h>

void test_ft_strcat()
{
	char *dst;
	char *src;

	src = strdup("Hello");
	dst = calloc(10, 1);
	dst[0] = 0;
	ft_strcat(dst, src);

	assert(!strcmp(dst, "Hello"));
	ft_strcat(dst, "");
	assert(!strcmp(dst, "Hello"));
	ft_strcat(dst, "1");
	assert(!strcmp(dst, "Hello1"));
	ft_strcat(dst, "2");
	assert(!strcmp(dst, "Hello12"));
}
