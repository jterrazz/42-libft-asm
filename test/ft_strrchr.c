/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/13 14:32:20 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/26 21:48:37 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"

void test_ft_strrchr()
{
	char *a = "1231";
	assert(ft_strrchr(a, '1') == a + 3);
	assert(ft_strrchr(a, '2') == a + 1);
	assert(ft_strrchr(a, '3') == a + 2);
	assert(ft_strrchr(a, '\0') == a + 4);
	assert(ft_strrchr(a, 'q') == NULL);
}
