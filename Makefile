##
## EPITECH PROJECT, 2018
## Assembly 
## File description:
## Makefile
##

%.o: %.asm
	nasm -o $@ $< -f elf64

NAME	= libasm.so

SRCS	= strlen.asm	\
	strchr.asm	\
	strcmp.asm	\
	memset.asm	\
	memcpy.asm	\

OBJS	= $(SRCS:.asm=.o)


all: $(NAME)

$(NAME): $(OBJS)
	ld -shared -fPIC -o $(NAME) $(OBJS) 

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
