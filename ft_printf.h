/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftprintf.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: moduwole <moduwole@student.42wolfsburg.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/06/04 17:48:57 by moduwole          #+#    #+#             */
/*   Updated: 2022/06/04 17:48:57 by moduwole         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include "libft/libft.h"
# include <stdarg.h>

int		ft_printf(const char *format, ...);
int		ft_print_s(va_list args);
int		ft_print_c(va_list args);
int		ft_print_i(va_list args);
int		ft_print_u(va_list args);
int		ft_print_x(va_list args, char c);
int		ft_print_p(va_list args);
int		ft_chexi(int tmp);
char	*ft_utoa(unsigned int n);
char	*ft_puthexi(unsigned int n, char c);
char	*ft_putadd(unsigned long n);

#endif