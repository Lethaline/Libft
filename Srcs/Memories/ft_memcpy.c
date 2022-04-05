/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lolemmen <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/05 14:58:55 by lolemmen          #+#    #+#             */
/*   Updated: 2022/04/05 16:30:16 by lolemmen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../Includes/libft.h"

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	size_t	i;
	char	*s1;

	i = 0;
	s1 = (char *)dst;
	if (n == 0 || dst == src)
		return (dst);
	while (i < n)
	{
		*(char *)s1 = *(char *)src;
		s1++;
		src++;
		i++;
	}
	return (dst);
}
