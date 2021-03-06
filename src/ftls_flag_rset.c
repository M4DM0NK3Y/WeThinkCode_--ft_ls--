/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftls_flag_rset.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cterblan <cterblan@student.wethinkcode>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/10 13:53:00 by cterblan          #+#    #+#             */
/*   Updated: 2018/09/14 09:38:35 by cterblan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/ft_ls.h"

void	ftls_flag_rset(t_lsflags *f)
{
	f->flags = 0;
	f->multi = 0;
	f->lr = 0;
	f->a = 0;
	f->l = 0;
	f->r = 0;
	f->t = 0;
	f->u = 0;
	f->f = 0;
	f->g = 0;
	f->d = 0;
}
