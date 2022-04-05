# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lolemmen <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/04 20:48:30 by lolemmen          #+#    #+#              #
#    Updated: 2022/04/05 16:16:05 by lolemmen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: clean §(NAME) re fclean all bonus
.SILENT:

NAME = libft.a

# Compilation

RM = rm -rf
CC = gcc
FLAGS = -Wall -Werror -Wextra

# Directories

SRCSDIR = Srcs
INCSDIR = Includes
OBJSDIR = Objs
BONUSDIR = Bonus

# Sources

SRC = \
	 Chars/ft_isalnum.c \
	 Chars/ft_isalpha.c \
	 Chars/ft_isascii.c \
	 Chars/ft_isdigit.c \
	 Chars/ft_isprint.c \
	 Memories/ft_bzero.c \
	 Memories/ft_memcpy.c \
	 Memories/ft_memmove.c \
	 Memories/ft_memset.c \

SRCBON = \


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

SRCS = $(addprefix $(SRCSDIR)/, $(SRC))
SRCSBON = $(addprefix $(SRCSDIR)/, $(SRCBON))
OBJS = $(addprefix $(OBJSDIR)/, $(addsuffix .o, $(basename $(SRC))))
OBJSBON = $(addprefix $(OBJSDIR)/, $(addsuffix .o, $(basename $(SRCBON))))
OBJS_DIR = $(sort $(dir $(OBJS)))

INCS_DIR = $(addsuffix /, $(INCSDIR))
INCS = $(addprefix -I, $(INCS_DIR))

all : $(NAME)

$(NAME) : build $(LIBS) $(OBJS)
	echo "$(LOG_CLEAR)$(NAME)... $(LOG_CYAN)assembling...$(LOG_NOCOLOR)$(LOG_UP)"
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)
	echo "$(LOG_CLEAR)$(NAME)... $(LOG_GREEN)compiled $(LOG_GREEN)✓$(LOG_NOCOLOR)"

build :
	mkdir -p $(OBJSDIR)
	mkdir -p $(OBJS_DIR)

clean :
	$(RM) $(LIBS)
	$(RM) $(OBJS_DIR)
	$(RM) $(OBJSDIR)

fclean : clean
	$(RM) $(NAME)

re : fclean all

$(OBJSDIR)/%.o: $(SRCSDIR)/%.c
	echo "$(LOG_CLEAR)$(NAME)... $(LOG_YELLOW)$<$(LOG_NOCOLOR)$(LOG_UP)"
	$(CC) -c -o $@ $< $(INCS) $(FLAGS)

bonus : $(OBJSBON)
	echo "$(LOG_CLEAR)$(NAME)... $(LOG_CYAN)assembling...$(LOG_NOCOLOR)$(LOG_UP)"
	ar rcs $(NAME) $^
	echo "$(LOG_CLEAR)$(NAME)... $(LOG_GREEN)compiled $(LOG_GREEN)✓$(LOG_NOCOLOR)"
