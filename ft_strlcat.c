/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lolemmen <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/07 17:07:09 by lolemmen          #+#    #+#             */
/*   Updated: 2022/04/08 15:04:04 by lolemmen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t dstsize)
{
	char		*s;
	size_t		i;
	size_t		j;
	size_t		k;

	if (dstsize == 0)
		return (ft_strlen(src));
	i = ft_strlen(dst);
	k = ft_strlen(src);
	j = 0;
	s = (char *)src;
	if (dstsize < i)
		return (dstsize + k);
	while (i + j < dstsize && s[j])
	{
		dst[i + j] = s[j];
		j++;
	}
	if (dstsize > i && dstsize == i + j)
		dst[i + j - 1] = '\0';
	else
		dst[i + j] = '\0';
	return (i + k);
}
