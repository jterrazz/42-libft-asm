/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/04 21:39:18 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_isdigit()
{
	assert(ft_isdigit(0) == 0);
	assert(ft_isdigit('1') == 1);
	assert(ft_isdigit('0') == 1);
	assert(ft_isdigit(59) == 0);
	assert(ft_isdigit(72) == 0);
}
