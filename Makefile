# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: moduwole <moduwole@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/05 11:37:08 by moduwole          #+#    #+#              #
#    Updated: 2022/06/05 11:37:08 by moduwole         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=		libftprintf.a

SRC			=		ft_hexi.c  ft_printf.c  ft_put.c \
					ft_putadd.c  ft_utoa.c  ft_puthexi.c

OBJ			=		$(SRC:.c=.o)

CC			=		gcc

CFLAGS		=		-Werror -Wextra -Wall

LIBFTDIR	=		libft/

LIBFTA		=		libft.a


all:		$(NAME)

$(NAME):	$(OBJ) $(LIBFTA)
	ar -rcs $(NAME) $(OBJ)

$(OBJ):		$(SRC)

$(LIBFTA):
	cd ./$(LIBFTDIR) && make all
	cp libft/libft.a .
	mv libft.a $(NAME)

clean:
		cd $(LIBFTDIR) && make clean
		rm -f $(OBJ)

fclean: clean
		cd $(LIBFTDIR) && make fclean
		rm -f $(NAME)

re: fclean all