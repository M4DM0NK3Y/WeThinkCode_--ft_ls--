/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftls_get_block.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cterblan <cterblan@student.wethinkcode>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/07 14:48:35 by cterblan          #+#    #+#             */
/*   Updated: 2018/09/14 07:16:28 by cterblan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/ft_ls.h"

void	ftls_get_block(char *path, t_lslink *l)
{
	struct stat		st;
	char			*fre;

	if (ft_isdir(path))
	{
		stat(fre = ft_strjoin(path, l->name), &st);
		free(fre);
	}
	else if (!(ft_isdir(path)))
		stat(path, &st);
	l->block = st.st_blocks;
}
