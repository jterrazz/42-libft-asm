/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/27 20:46:48 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/27 20:48:40 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"
#include <string.h>

void	test_ft_bzero()
{
	char arr[5];

	arr[0] = 'y';
	arr[4] = 'y';
	ft_bzero(arr, 5);
	assert(arr[0] == 0);
	assert(arr[4] == 0);
}
