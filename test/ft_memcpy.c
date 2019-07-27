/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/27 20:46:57 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/27 20:48:35 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void	test_ft_memcpy()
{
	char arr[5];
	char arr2[5];
	void *a;

	arr[0] = 'y';
	arr[4] = 'y';
	a = ft_memcpy(arr2, arr, 5);
	assert(arr2[0] == 'y');
	assert(arr2[4] == 'y');
	assert(a == arr2);
}
