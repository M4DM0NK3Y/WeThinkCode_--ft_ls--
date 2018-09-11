/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ftls_print.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cterblan <cterblan@student.wethinkcode>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/07 15:10:54 by cterblan          #+#    #+#             */
/*   Updated: 2018/09/11 10:37:53 by cterblan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/ft_ls.h"

void	ftls_print(t_lslink *l, t_lsflags *f)
{
	/*SORT AND THEN PRINT ACCORDING TO THE FLAGS*/
	if (f->a == 0 && f->l == 0 && f->d == 0)
		ftls_print_none(f, l);
	else if (f->a == 1 && f->l == 0 && f->d == 0)
		ftls_print_hidden(f, l);
	else if (f->l == 1 && f->a == 0 && f->d == 0)
		ftls_print_long(f, l);
	else if (f->l == 1 && f->a == 1 && f->d == 0)
		ftls_print_lhidden(f, l);
	else if (f->d == 1 && f->l == 0)
		ftls_print_direct(f, l);
}
