# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lolemmen <lolemmen@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/04 20:48:30 by lolemmen          #+#    #+#              #
#    Updated: 2022/04/08 00:13:18 by lolemmen         ###   ########.fr        #
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
	 Chars/ft_toupper.c \
	 Chars/ft_tolower.c \
	 Chars/ft_putchar_fd.c \
	 Memories/ft_bzero.c \
	 Memories/ft_memcpy.c \
	 Memories/ft_memmove.c \
	 Memories/ft_memset.c \
	 Memories/ft_calloc.c \
	 Memories/ft_memccpy.c \
	 Memories/ft_memchr.c \
	 Memories/ft_memcmp.c \
	 Strings/ft_strlen.c \
	 Strings/ft_putendl_fd.c \
	 Strings/ft_putstr_fd.c \
	 Strings/ft_strchr.c \
	 Strings/ft_strrchr.c \
	 Strings/ft_strncmp.c \
	 Strings/ft_strnstr.c \
	 Strings/ft_strlcpy.c \
	 Strings/ft_strlcat.c \
	 Strings/ft_strdup.c \
	 Strings/ft_substr.c \
	 Strings/ft_strjoin.c \
	 Strings/ft_strtrim.c \
	 Strings/ft_strmapi.c \
	 Strings/ft_split.c \
	 Strings/ft_striteri.c \
	 Numbers/ft_atoi.c \
	 Numbers/ft_itoa.c \
	 Numbers/ft_putnbr_fd.c \
	 Lists/ft_lstsize.c \
	 Lists/ft_lstnew.c \
	 Lists/ft_lstdelone.c \
	 Lists/ft_lstclear.c \
	 Lists/ft_lstadd_back.c \
	 Lists/ft_lstadd_front.c \
	 Lists/ft_lstiter.c \
	 Lists/ft_lstlast.c \
	 Lists/ft_lstmap.c \

SRCBON = \
	 Lists/ft_lstsize.c \
	 Lists/ft_lstnew.c \
	 Lists/ft_lstclear.c \


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
