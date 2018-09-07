/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ls.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cterblan <cterblan@student.wethinkcode>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/06 15:32:28 by cterblan          #+#    #+#             */
/*   Updated: 2018/09/07 13:49:15 by cterblan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_LS_H
# define FT_LS_H

# define LSVALID "-Ralrtufgd"

# include "ft_struct.h"
# include "../lib/ft_printf/inc/ft_printf.h"
# include <dirent.h>
# include <grp.h>
# include <pwd.h>
# include <stdio.h>
# include <stdlib.h>
# include <sys/types.h>
# include <sys/stat.h>
# include <uuid/uuid.h>

int		ft_isdir(const char *path);
int		ft_isreg(const char *path);
void	ftls_flag_none(const char *path, t_lslink *l);
void	ftls_print_none(t_lslink *l);
void	ftls_print_hidden(t_lslink *l);
void	ftls_flag_set();
void	ftls_read_dir();

#endif