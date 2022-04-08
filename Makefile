# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lolemmen <lolemmen@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/04 20:48:30 by lolemmen          #+#    #+#              #
#    Updated: 2022/04/08 14:48:50 by lolemmen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: clean re fclean all bonus

NAME = libft.a

# Compilation

RM = rm -rf
CC = gcc
FLAGS = -Wall -Werror -Wextra

# Sources

INC = \
	  libft.h \

SRC = \
	 ft_isalnum.c \
	 ft_isalpha.c \
	 ft_isascii.c \
	 ft_isdigit.c \
	 ft_isprint.c \
	 ft_toupper.c \
	 ft_tolower.c \
	 ft_putchar_fd.c \
	 ft_bzero.c \
	 ft_memcpy.c \
	 ft_memmove.c \
	 ft_memset.c \
	 ft_calloc.c \
	 ft_memchr.c \
	 ft_memcmp.c \
	 ft_strlen.c \
	 ft_putendl_fd.c \
	 ft_putstr_fd.c \
	 ft_strchr.c \
	 ft_strrchr.c \
	 ft_strncmp.c \
	 ft_strnstr.c \
	 ft_strlcpy.c \
	 ft_strlcat.c \
	 ft_strdup.c \
	 ft_substr.c \
	 ft_strjoin.c \
	 ft_strtrim.c \
	 ft_strmapi.c \
	 ft_split.c \
	 ft_striteri.c \
	 ft_atoi.c \
	 ft_itoa.c \
	 ft_putnbr_fd.c \

SRCBON = \
	 ft_lstsize.c \
	 ft_lstnew.c \
	 ft_lstdelone.c \
	 ft_lstclear.c \
	 ft_lstadd_back.c \
	 ft_lstadd_front.c \
	 ft_lstiter.c \
	 ft_lstlast.c \
	 ft_lstmap.c \


# **************************************************************************** #

# Special Chars

LOG_CLEAR = \033[2K
LOG_UP = \033[A
LOG_NOCOLOR = \033[0m
LOG_BLACK = \033[1;30m
LOG_RED = \033[1;31m
LOG_GREEN = \033[1;32m
LOG_YELLOW = \033[1;33m
LOG_BLUE = \033[1;34m
LOG_VIOLET = \033[1;35m
LOG_CYAN = \033[1;36m
LOG_WHITE = \033[1;37m

# **************************************************************************** #

SRCS = $(SRC)
SRCSBON = $(SRCBON)
OBJS = $(addsuffix .o, $(basename $(SRC)))
OBJSBON = $(addsuffix .o, $(basename $(SRCBON)))

INCS = $(addprefix -I, $(INC))

all : $(NAME)

$(NAME) : $(OBJS)
	ar rcs $@ $^

clean :
	$(RM) $(OBJS)
	$(RM) $(OBJSBON)

fclean : clean
	$(RM) $(NAME)

re : fclean all

.c.o: $(SRCS)
	$(CC) -c -o $@ $< $(FLAGS)

bonus : $(OBJSBON)
	ar rcs $(NAME) $^
