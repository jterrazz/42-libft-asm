/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_islower.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/04 21:24:54 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_islower()
{
	assert(ft_islower('1') == 0);
	assert(ft_islower('a') == 1);
	assert(ft_islower('A') == 0);
	assert(ft_islower('Z') == 0);
	assert(ft_islower('z') == 1);
	assert(ft_islower('@') == 0);
	assert(ft_islower(133) == 0);
	assert(ft_islower(140) == 0);
	assert(ft_islower(173) == 0);
}
