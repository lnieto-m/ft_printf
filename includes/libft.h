/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lnieto-m <lnieto-m@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/23 11:27:36 by lnieto-m          #+#    #+#             */
/*   Updated: 2016/04/03 13:34:28 by lnieto-m         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <string.h>
# include <stdlib.h>
# include <unistd.h>

char				*ft_strsub(char const *s, unsigned int start, size_t len);
size_t				ft_strlen(const char *str);
char				*ft_strdup(const char *str);
char				*ft_strncpy(char *dest, const char *src, int n);
char				*ft_strcpy(char *dest, const char *src);
int					ft_strcmp(const char *str1, const char *str2);
int					ft_toupper(int c);
int					ft_putchar(char c);
int					ft_isdigit(int c);
char				*ft_strchr(const char *s, int c);
char				*ft_itoa(long long int n);
char				*ft_itoa_base(unsigned long long n, int base);
void				ft_reverse(char *str);

#endif
