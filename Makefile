NAME = libs

SRCS_ASM = ft_strdup.s ft_write.s ft_strlen.s ft_read.s ft_strcpy.s ft_strcmp.s 

SRCS_C = main.c

OBJS_ASM = $(SRCS_ASM:%.s=%.o)

OBJS_C = $(SRCS_C:%.c=%.o)

CC = gcc

CFLAGS = -Wall -Wextra -Werror  

NASM = nasm

NASMFLAGS = -f elf64 

all: $(NAME)

$(NAME): $(OBJS_ASM) $(OBJS_C)
	$(CC) $(CFLAGS) $(OBJS_C) $(OBJS_ASM) -o $(NAME)

%.o: %.s
	$(NASM) $(NASMFLAGS) $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS_ASM) $(OBJS_C) $(NAME)

re: clean all

.PHONY: all clean re
