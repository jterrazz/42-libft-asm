/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/13 14:32:10 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/13 17:45:09 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"
#include <stdlib.h>

void test_ft_memdel()
{
	void *ptr;

	if ((ptr = malloc(12))) {
		assert(ptr != NULL);
		ft_memdel(&ptr);
		assert(!ptr);
	} else {
		assert(0);
	}
}
