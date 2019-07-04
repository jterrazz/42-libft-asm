/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/04 21:31:53 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_isalpha()
{
	assert(ft_isalpha('1') == 0);
	assert(ft_isalpha('a') == 1);
	assert(ft_isalpha('A') == 1);
	assert(ft_isalpha('Z') == 1);
	assert(ft_isalpha('z') == 1);
	assert(ft_isalpha('@') == 0);
	assert(ft_isalpha(133) == 0);
	assert(ft_isalpha(140) == 0);
	assert(ft_isalpha(173) == 0);
}
