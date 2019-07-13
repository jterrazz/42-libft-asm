/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_asm.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/04 14:55:53 by jterrazz          #+#    #+#             */
/*   Updated: 2019/07/13 14:55:59 by jterrazz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTASM_H
#define LIBFTASM_H

#include <stdlib.h>

// TODO Check prototypes are equals

void ft_bzero(void *sl, size_t n);
int ft_isalpha(int c);
int ft_isupper(int c);
int ft_islower(int c);
int ft_isdigit(int c);
int ft_isalnum(int c);
int ft_isascii(int c);
int ft_isprint(int c);
int ft_toupper(int c);
int ft_tolower(int c);
size_t ft_strlen(const char *s);
int ft_puts(const char *s);
void *ft_memset(void *b, int c, size_t len);
void *ft_memcpy(void *restrict dst, const void *retrict, size_t n);
char *ft_strdup(const char *s1);
void ft_cat(int fd);
char *ft_strrchr(const char *s, int c);
char			*ft_strncpy(char *dst, const char *src, size_t len);

#endif
