# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/04 16:05:42 by jterrazz          #+#    #+#              #
#    Updated: 2019/07/04 16:20:27 by jterrazz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

INC_PATH = inc
LIB_PATH = lib
BUILD_PATH = obj
SRC_PATH = src

SOURCES = ft_bzero.s
OBJECTS = $(SOURCES:%.s=$(BUILD_PATH)/%.o)

# **************************************************************************** #
# VARIABLES         														   #
# **************************************************************************** #

ASM_CC = nasm
ASM_FLAGS = -f macho64

CC = gcc
CC_FLAGS = -Wall -Wextra -Werror

LIB_NAME = libfts.a
TEST_NAME = test_libfts

# **************************************************************************** #
# COMMANDS  		    													   #
# **************************************************************************** #

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJECTS)
	@ar rcs $@ $^

$(BUILD_PATH)/%.o: $(SRC_PATH)/%.c
	@mkdir -p $(@D)
	@$(ASM_CC) $(ASM_FLAGS) $< -o $@ # Maybe include .h ?
	#$(CC) $(FLAGS_CC) -c -o $@ $< -I $(INC_PATH)

clean:
	@rm -rf $(BUILD_PATH)
	@echo "Clean \033[33mok\033[0m"

fclean: clean
	@rm -f $(LIB_NAME)
	@echo "Fclean \033[33mok\033[0m"

re: fclean $(NAME)
