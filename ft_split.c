/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lolemmen <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/07 18:26:57 by lolemmen          #+#    #+#             */
/*   Updated: 2022/04/08 15:03:42 by lolemmen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static char	**ft_free(char **str, int size)
{
	while (size >= 0)
	{
		free(str[size]);
		size--;
	}
	free(str);
	return (NULL);
}

static int	ft_check_if_null_word(char *str, char sep)
{
	int	i;

	i = 0;
	while (str[i] && str[i] != sep)
		i++;
	return (i);
}

static int	ft_get_nb_word(char *str, char sep)
{
	int	i;
	int	word;

	i = 0;
	word = 0;
	while (*str)
	{
		while (*str && *str == sep)
			str++;
		i = ft_check_if_null_word(str, sep);
		str += i;
		if (i)
			word++;
	}
	return (word);
}

static char	*ft_strcpy(char *src, int n)
{
	char	*dest;

	dest = (char *)malloc((n + 1) * sizeof(char));
	if (!dest)
		return (NULL);
	dest[n] = '\0';
	n--;
	while (n >= 0)
	{
		dest[n] = src[n];
		n--;
	}
	return (dest);
}

char	**ft_split(char const *s, char c)
{
	char	**tab;
	int		size;
	int		i;
	int		n;

	if (!s)
		return (NULL);
	size = ft_get_nb_word((char *)s, c);
	tab = (char **)malloc((size + 1) * sizeof(char *));
	if (!tab)
		return (NULL);
	i = 0;
	while (i < size)
	{
		while (*s && *s == c)
			s++;
		n = ft_check_if_null_word((char *)s, c);
		tab[i] = ft_strcpy((char *)s, n);
		if (!tab[i])
			return (ft_free(tab, size));
		s += n;
		i++;
	}
	tab[size] = 0;
	return (tab);
}
