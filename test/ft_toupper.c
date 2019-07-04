/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_toupper.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 22:09:09 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/04 22:14:54 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_toupper()
{
	assert(ft_toupper('a') == 'A');
	assert(ft_toupper('z') == 'Z');
	assert(ft_toupper('0') == '0');
	assert(ft_toupper('-') == '-');
	assert(ft_toupper(0) == 0);
	assert(ft_toupper(177) == 177);
}
