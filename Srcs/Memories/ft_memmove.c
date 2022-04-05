/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lolemmen <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/05 15:01:29 by lolemmen          #+#    #+#             */
/*   Updated: 2022/04/05 16:52:43 by lolemmen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../Includes/libft.h"

void	*ft_memmove(void *dst, const void *src, size_t len)
{
	size_t	i;
	char	*s1;

	i = 0;
	s1 = (char *)dst;
	if (!(s1 + len - 1) || !(src + len - 1))
		return (dst);
	while (i < len)
	{
		*(char *)s1 = *(char *)src;
		s1++;
		src++;
		i++;
	}
	return (dst);
}
