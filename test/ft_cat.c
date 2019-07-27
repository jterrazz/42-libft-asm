/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_cat.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/27 20:50:41 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"
#include <fcntl.h>

int		test_ft_cat(int argc, char **argv)
{
	ft_cat(0);
	ft_cat(open(__FILE__, O_RDONLY));
	ft_cat(open(argv[0], O_RDONLY));
	ft_cat(-42);
	(void)argc;
	return (0);
}
