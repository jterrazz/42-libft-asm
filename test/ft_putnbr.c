/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 20:20:19 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/14 01:41:49 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "./test.h"
#include "stdio.h"

void test_ft_putnbr()
{
	ft_putnbr(-2147483648);
	ft_puts("");
	ft_putnbr(321);
	ft_puts("");
	ft_putnbr(2);
	ft_puts("");
	ft_putnbr(0);
	ft_puts("");
	ft_putnbr(-22);
	ft_puts("");
	ft_putnbr(20);
	ft_puts("");
}
