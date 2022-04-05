# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lolemmen <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/04 20:48:30 by lolemmen          #+#    #+#              #
#    Updated: 2022/04/04 20:54:39 by lolemmen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: clean §(NAME) re fclean all
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

# Sources

SRC =\

# **************************************************************************** #

# Special Chars

LOG_CLEAR = \033[2K
LOG_UP = \033[A
LOG_NOCOLOR = \033[0m
LOG_BLACK = \033[1;30m
LOG_RED = \033[1;31m
LOG_

# **************************************************************************** #

