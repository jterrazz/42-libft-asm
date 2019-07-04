# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jterrazz <jterrazz@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/04 16:05:42 by jterrazz          #+#    #+#              #
#    Updated: 2019/07/04 21:41:14 by jterrazz         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

INC_PATH = inc
LIB_PATH = lib
TMP_PATH = obj
BUILD_PATH = $(TMP_PATH)/src
SRC_PATH = src
T_SRC_PATH = test
T_BUILD_PATH = $(TMP_PATH)/test

SOURCES = ft_bzero.s ft_isupper.s ft_islower.s ft_isalpha.s ft_isdigit.s ft_isalnum.s
OBJECTS = $(SOURCES:%.s=$(BUILD_PATH)/%.o)

T_SOURCES = main.c ft_bzero.c ft_isupper.c ft_islower.c ft_isalpha.c ft_isdigit.c ft_isalnum.c
T_OBJECTS = $(T_SOURCES:%.c=$(T_BUILD_PATH)/%.o)

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

.PHONY: all test clean fclean re

all: $(LIB_NAME)

$(LIB_NAME): $(OBJECTS)
	@ar rcs $@ $^

$(BUILD_PATH)/%.o: $(SRC_PATH)/%.s
	@mkdir -p $(@D)
	@$(ASM_CC) $(ASM_FLAGS) $< -o $@ # Maybe include .h ?

clean:
	@rm -rf $(TMP_PATH)
	@echo "Clean \033[33mok\033[0m"

fclean: clean
	@rm -f $(LIB_NAME)
	@echo "Fclean \033[33mok\033[0m"

re: fclean $(NAME)

# **************************************************************************** #
# TEST COMMANDS  		    												   #
# **************************************************************************** #

# Maybe put the main.c file in root (depend of the subject)
test: all $(T_OBJECTS)
	@$(CC) $(CC_FLAGS) -o $(TEST_NAME) $(T_OBJECTS) $(LIB_NAME) -I $(INC_PATH)

$(T_BUILD_PATH)/%.o: $(T_SRC_PATH)/%.c
	@mkdir -p $(@D)
	$(CC) $(CC_FLAGS) -c -o $@ $< -I $(INC_PATH)

tclean: fclean
	@rm -rf $(T_BUILD_PATH)
	@rm -f $(TEST_NAME)