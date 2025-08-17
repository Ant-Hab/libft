# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: achowdhu <achowdhu@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/22 18:09:48 by achowdhu          #+#    #+#              #
#    Updated: 2025/07/20 18:02:30 by achowdhu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ========================================
#           Project Information
# ========================================

NAME        := libft.a

# Compiler and Flags
CC          := cc
CFLAGS      := -Wall -Wextra -Werror
AR          := ar rcs
RM          := rm -f

# Directories
SRC_DIR     := src
OBJ_DIR     := obj
INC_DIR     := include

# Includes
INC         := -I$(INC_DIR)

# ========================================
#           Source and Objects
# ========================================

CHAR_SRCS   := ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
               ft_isprint.c ft_toupper.c ft_tolower.c

STR_SRCS    := ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strchr.c \
               ft_strrchr.c ft_strncmp.c ft_strnstr.c ft_strdup.c \
               ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
               ft_strmapi.c ft_striteri.c ft_strrev.c ft_strtok.c

MEM_SRCS    := ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
               ft_memchr.c ft_memcmp.c ft_calloc.c

FD_SRCS     := get_next_line.c ft_putchar_fd.c ft_putstr_fd.c \
               ft_putendl_fd.c ft_putnbr_fd.c ft_uputnbr_fd.c

CONV_SRCS   := ft_atoi.c ft_atoibool.c ft_itoa.c ft_printf.c

SRCS        := $(CHAR_SRCS) $(STR_SRCS) $(MEM_SRCS) $(FD_SRCS) $(CONV_SRCS)
OBJS        := $(addprefix $(OBJ_DIR)/,$(SRCS:.c=.o))

# ========================================
#               Colors
# ========================================

GREEN       := \033[0;32m
YELLOW      := \033[0;33m
RESET       := \033[0m

# ========================================
#               Rules
# ========================================

all: $(NAME)

$(NAME): $(OBJS)
	@echo "$(GREEN)[Archiving]$(RESET) $@"
	@$(AR) $@ $^
	@echo "$(GREEN)✔ $@ ready!$(RESET)"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	@echo "$(GREEN)[Compiling]$(RESET) $<"
	@$(CC) $(CFLAGS) $(INC) -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

clean:
	@echo "$(YELLOW)[Cleaning]$(RESET) object files"
	@$(RM) $(OBJS)
	@rmdir $(OBJ_DIR) 2>/dev/null || true
	@echo "$(GREEN)✔ Cleaned successfully!$(RESET)"

fclean: clean
	@echo "$(YELLOW)[Removing]$(RESET) $(NAME)"
	@$(RM) $(NAME)
	@echo "$(GREEN)✔ All files removed successfully!$(RESET)"

re: fclean all

.SECONDARY: $(OBJS)
.PHONY: all clean fclean re
