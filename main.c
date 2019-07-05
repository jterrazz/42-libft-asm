/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/05 11:59:23 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/05 12:02:00 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <fcntl.h>

void ft_cat(int fd);

int main(int argc, const char **argv)
{
	ft_cat(0);
	ft_cat(open(__FILE__,O_RDONLY));
	ft_cat(open(argv[0], O_RDONLY));
	ft_cat(-42);
	(void)argc;
	return 0;
}
