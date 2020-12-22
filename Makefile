# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tjung <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/17 17:30:52 by tjung             #+#    #+#              #
#    Updated: 2020/10/17 18:19:51 by tjung            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

SRCS_A = ft_atoi.c \
		 ft_bzero.c \
		 ft_calloc.c \
		 ft_isalnum.c \
		 ft_isalpha.c \
		 ft_isascii.c \
		 ft_isdigit.c \
		 ft_isprint.c \
		 ft_memccpy.c \
		 ft_memchr.c \
		 ft_memcmp.c \
		 ft_memcpy.c \
		 ft_memmove.c \
		 ft_memset.c \
		 ft_strchr.c \
		 ft_strdup.c \
		 ft_strlcat.c \
		 ft_strlcpy.c \
		 ft_strlen.c \
		 ft_strncmp.c \
		 ft_strnstr.c \
		 ft_strrchr.c \
		 ft_tolower.c \
		 ft_toupper.c \
		 ft_substr.c \
		 ft_strjoin.c \
		 ft_strtrim.c \
		 ft_split.c \
		 ft_itoa.c \
		 ft_strmapi.c \
		 ft_putchar_fd.c \
		 ft_putstr_fd.c \
		 ft_putendl_fd.c \
		 ft_putnbr_fd.c

SRCS_B = ft_lstnew.c \
		 ft_lstadd_front.c \
		 ft_lstsize.c \
		 ft_lstlast.c \
		 ft_lstadd_back.c \
		 ft_lstdelone.c \
		 ft_lstclear.c \
		 ft_lstiter.c \
		 ft_lstmap.c

OBJS_A = $(SRCS_A:.c=.o)
OBJS_B = $(SRCS_B:.c=.o)

.PHONY: all, bonus, clean, fclean, re

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS_A)
		$(AR) $@ $^

all: $(NAME)

bonus: $(OBJS_B)
		$(AR) $(NAME) $^

clean:
	$(RM) $(OBJS_A) $(OBJS_B)

fclean: clean
	$(RM) $(NAME)

re: fclean all
