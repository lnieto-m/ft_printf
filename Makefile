# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lnieto-m <lnieto-m@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/26 14:59:47 by lnieto-m          #+#    #+#              #
#    Updated: 2016/04/03 13:38:02 by lnieto-m         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CFLAGS = -Wall -Wextra -Werror

CPFLAGS = -I ./includes

NAME = libft.a

SRC_PATH = srcs

OBJ_PATH = obj

SRC_NAME = libft/ft_strdup.c \
		   libft/ft_strlen.c \
		   libft/ft_strsub.c \
		   libft/ft_strcpy.c \
		   libft/ft_strncpy.c \
		   libft/ft_itoa.c \
		   libft/ft_itoa_base.c \
		   libft/ft_strchr.c \
		   libft/ft_strcmp.c \
		   libft/ft_toupper.c \
		   libft/ft_putchar.c \
		   libft/ft_isdigit.c \
		   libft/ft_reverse.c \
		   libftprintf/ft_printf.c \
		   libftprintf/ft_printf_conversion_s.c \
		   libftprintf/ft_printf_conversion_ls.c \
		   libftprintf/ft_printf_conversion_c.c \
		   libftprintf/ft_printf_conversion_lc.c \
		   libftprintf/ft_printf_conversion_d.c \
		   libftprintf/ft_printf_conversion_ld.c \
		   libftprintf/ft_printf_conversion_x.c \
		   libftprintf/ft_printf_conversion_o.c \
		   libftprintf/ft_printf_conversion_lo.c \
		   libftprintf/ft_printf_conversion_u.c \
		   libftprintf/ft_printf_conversion_lu.c \
		   libftprintf/ft_printf_conversion_xmaj.c \
		   libftprintf/ft_printf_conversion_p.c \
		   libftprintf/ft_printf_flags.c \
		   libftprintf/ft_printf_percentage.c \
		   libftprintf/parser.c \
		   libftprintf/ft_printf_len_modifier.c \
		   libftprintf/unsigned_check.c\
		   libftprintf/signed_check.c\
		   libftprintf/ft_putwchar.c \
		   libftprintf/ft_putwstr.c \
		   libftprintf/ft_wstrlen.c \
		   libftprintf/ft_isconv.c \
		   libftprintf/ft_printf_no_conv.c \

OBJ_NAME = $(SRC_NAME:.c=.o)

SRC = $(addprefix $(SRC_PATH)/,$(SRC_NAME))

OBJ = $(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	@mkdir $(OBJ_PATH)/libft 2> /dev/null || true
	@mkdir $(OBJ_PATH)/libftprintf 2> /dev/null || true
	$(CC) $(CFLAGS) $(CPFLAGS) -o $@ -c $<

clean:
	rm -rf $(OBJ)
	rm -rf $(OBJ_PATH)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: clean fclean re all
