/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lolemmen <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/07 16:15:53 by lolemmen          #+#    #+#             */
/*   Updated: 2022/04/08 18:56:02 by lolemmen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t count, size_t size)
{
	void	*result;
	size_t	i;

	result = (void *)malloc(size * count * sizeof(void));
	if (!result)
		return (NULL);
	if (size == 0)
		return (NULL);
	i = count * size;
	if (i / size != count)
		return (NULL);
	ft_bzero(result, count * size);
	return (result);
}
