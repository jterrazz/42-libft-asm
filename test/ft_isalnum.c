/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/04 21:42:30 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_isalnum()
{
	assert(ft_isalnum('1') == 1);
	assert(ft_isalnum('9') == 1);
	assert(ft_isalnum('a') == 1);
	assert(ft_isalnum('M') == 1);
	assert(ft_isalnum('A') == 1);
	assert(ft_isalnum('Z') == 1);
	assert(ft_isalnum('z') == 1);
	assert(ft_isalnum('@') == 0);
	assert(ft_isalnum(133) == 0);
	assert(ft_isalnum(140) == 0);
	assert(ft_isalnum(173) == 0);
}
