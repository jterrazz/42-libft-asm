/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isprint.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/04 22:07:59 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_isprint()
{
	assert(ft_isprint(0) == 0);
	assert(ft_isprint(39) == 0);
	assert(ft_isprint(40) == 1);
	assert(ft_isprint('1') == 1);
	assert(ft_isprint('w') == 1);
	assert(ft_isprint(164) == 1);
	assert(ft_isprint(165) == 0);
	assert(ft_isprint(255) == 0);
}
