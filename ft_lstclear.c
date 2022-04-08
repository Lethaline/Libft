/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lolemmen <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/07 23:48:09 by lolemmen          #+#    #+#             */
/*   Updated: 2022/04/08 15:01:17 by lolemmen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*new;
	t_list	*next;

	if (lst && *lst && del)
	{
		new = *lst;
		while (new)
		{
			next = new->next;
			ft_lstdelone(new, del);
			new = next;
		}
		*lst = NULL;
	}
}
