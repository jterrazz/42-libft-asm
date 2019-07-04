/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_tolower.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 22:09:09 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/04 22:18:09 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_tolower()
{
	assert(ft_tolower('A') == 'a');
	assert(ft_tolower('Z') == 'z');
	assert(ft_tolower('0') == '0');
	assert(ft_tolower('-') == '-');
	assert(ft_tolower(0) == 0);
	assert(ft_tolower(177) == 177);
}
