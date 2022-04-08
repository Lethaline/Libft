/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lolemmen <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/05 14:56:03 by lolemmen          #+#    #+#             */
/*   Updated: 2022/04/08 17:59:55 by lolemmen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void	*b, int c, size_t len)
{
	size_t	i;
	char	*s1;

	i = 0;
	s1 = (char *)b;
	while (i < len)
	{
		*(char *)s1 = (unsigned char)c;
		s1++;
		i++;
	}
	return (b);
}
