/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isupper.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/04 21:18:40 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_isupper()
{
	assert(ft_isupper('1') == 0);
	assert(ft_isupper('a') == 0);
	assert(ft_isupper('A') == 1);
	assert(ft_isupper('Z') == 1);
	assert(ft_isupper('z') == 0);
	assert(ft_isupper('@') == 0);
	assert(ft_isupper(133) == 0);
	assert(ft_isupper(140) == 0);
	assert(ft_isupper(173) == 0);
}
