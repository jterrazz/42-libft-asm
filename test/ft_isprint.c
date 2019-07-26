/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isprint.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/26 21:59:38 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_isprint()
{
	assert(ft_isprint(0) == 0);
	assert(ft_isprint(31) == 0);
	assert(ft_isprint(32) == 1);
	assert(ft_isprint('1') == 1);
	assert(ft_isprint('w') == 1);
	assert(ft_isprint(126) == 1);
	assert(ft_isprint(127) == 0);
	assert(ft_isprint(255) == 0);
}
