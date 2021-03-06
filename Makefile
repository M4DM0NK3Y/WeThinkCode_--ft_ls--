# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cterblan <cterblan@student.wethinkcode>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/07 10:04:12 by cterblan          #+#    #+#              #
#    Updated: 2018/09/13 14:57:25 by cterblan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

################################################################################
#								NAME
################################################################################
AUTHOR := cterblan
#AUTHOR NAME^^^

NAME := ft_ls
#PROJECT OUTPUT FILE NAME ^^^
################################################################################
#								DIRECTORIES
################################################################################
INC_DIR := inc
#INCLUDES DIRECTORY ^^^
SRC_DIR := src
#SOURCES DIRECTORY ^^^
OBJ_DIR := obj
#OBJECTS DIRECTORY ^^^
LIB_DIR := lib
#LIBRARY DIRECTORY ^^^
################################################################################
#								FILES
################################################################################
#SRC:= ft_function.c
SRC :=	ft_isdir.c\
		ft_isreg.c\
		ftls_recall.c\
		ftls_read_dir.c\
		ftls_main.c\
		ftls_flag_rset.c\
		ftls_flag_set.c\
		ftls_link_add.c\
		ftls_link_free.c\
		ftls_get_all.c\
		ftls_get_block.c\
		ftls_get_blocktotal.c\
		ftls_get_name.c\
		ftls_get_path.c\
		ftls_get_perm.c\
		ftls_get_links.c\
		ftls_get_owner.c\
		ftls_get_group.c\
		ftls_get_fsize.c\
		ftls_get_time.c\
		ftls_sort.c\
		ftls_sort_switch.c\
		ftls_sort_name.c\
		ftls_rsort_name.c\
		ftls_sort_time.c\
		ftls_rsort_time.c\
		ftls_print.c\
		ftls_print_none.c\
		ftls_print_hidden.c\
		ftls_print_long.c\
		ftls_print_lhidden.c\
#ADD SOURCE FILES HERE ^^^
OBJ := $(addprefix $(OBJ_DIR)/, $(SRC:%.c=%.o))
################################################################################
#								LIBRARIES
################################################################################
#NAME_DIR := $(LIBDIR)/{library}
PRINTF_DIR := $(LIB_DIR)/ft_printf
#ADD ADDITIONAL LIBRARIES HERE ^^^
LIB_FLAG := -lftprintf
################################################################################
#								COMPILER
################################################################################
CFLAGS := -Wall -Werror -Wextra -g
#ADD ADDITIONAL FLAGS HERE ^^^
CC := gcc $(CFLAGS)
################################################################################
#								RULES
################################################################################

all: $(NAME)

$(NAME): $(OBJ)
	@make all -C $(PRINTF_DIR)/
	@echo "\033[35m\t\t[COMPILING] $@\033"
	@$(CC) -o $@ -I $(INC_DIR) -L $(PRINTF_DIR)/ $(LIB_FLAG) $(OBJ)
	@#COMPILE EXECUTABLE ^^^^^
	@#ar rcs $(NAME).a $(OBJ) $(PRINTF_DIR)/obj/*.o
	@#COMPILE LIBRARY ^^^^^^^
	@echo "\033[32m\t\t[COMPILED SUCCESSFULLY]\033"
	@#DON'T TOUCH ^^^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@echo "\033[36m\t\t[Building]\033[0m $@"
	@mkdir -p $(OBJ_DIR)
	@$(CC) -I $(INC_DIR) -o $@ -c $<
	@echo "\033[33m\t\t[SUCCESS]\033[0m"
	@#DON'T TOUCH ^^^

clean: cleanlib
	@echo "\033[33m\t\t[FT_LS]\033[0m"
	@echo "\033[31m\t\t[CLEANING]\t$(OBJ_DIR)\033[0m"
	@rm -rf $(OBJ_DIR)
	@#DON'T TOUCH ^^^

cleanlib:
	@echo "\033[31m\t\t[CLEANING]\t$(LIB_DIR)\033[0m"
	@make clean -C $(PRINTF_DIR)
	@#ADD ADDITIONAL LIBRARIES HERE ^^^

fclean: clean fcleanlib
	@echo "\033[33m\t\t[FT_LS]\033[0m"
	@echo "\033[31m\t\t[FCLEAN]\t$(NAME)\033[0m"
	@rm -f $(NAME)
	@#ADD ADDITIONAL NAME FILES HERE ^^^

fcleanlib:
	@echo "\033[31m\t\t[FCLEAN]\t$(LIB_DIR)\033[0m"
	@make fclean -C $(PRINTF_DIR)
	@#ADD ADDITIONAL LIBRARIES HERE ^^^

re: fclean all

workspace:
	@echo "\033[36m\t\t[Building $@]\033[0m"
	@mkdir -p $(INC_DIR)
	@mkdir -p $(SRC_DIR)
	@mkdir -p $(LIB_DIR)
	@touch author
	@echo $(AUTHOR) > author
################################################################################
#								SPECIAL
################################################################################

.PHONEY := all clean fclean re workspace
#ADD PHONEY HERE ^^^

.SILENT:
#DON'T TOUCH ^^^

.PRECIOUS := author
#ADD PRECIOUS HERE ^^^