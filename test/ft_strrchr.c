/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/13 14:32:20 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/13 14:42:04 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"
#include <stdio.h>//del
void test_ft_strrchr()
{
	char *a = "123";
	assert(ft_strrchr(a, '1') == a);
	assert(ft_strrchr(a, '2') == a + 1);
	assert(ft_strrchr(a, '3') == a + 2);
	assert(ft_strrchr(a, '\0') == a + 3);
	assert(ft_strrchr(a, 'q') == NULL);
}
