NAME = libftprintf.a
NAME_TEST = test

CC = gcc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -rf

FILES = ft_printf \
		ft_nbrlen \
		ft_putchar_fd \
		ft_putnbr_base_fd \
		ft_putstr_fd \
		ft_strlen \
		ft_putptr_fd \

SRCS_DIR = srcs
SRCS_PATH = ./$(SRCS_DIR)/
SRCS = $(addprefix $(SRCS_PATH), $(addsuffix .c, $(FILES)))

OBJS_PATH_O = ./
OBJS_O = $(addprefix $(OBJS_PATH_O), $(addsuffix .o, $(FILES)))

OBJS_DIR = objs
OBJS_PATH = ./$(OBJS_DIR)/
OBJS = $(addprefix $(OBJS_PATH), $(addsuffix .o, $(FILES)))

all : .c.o objs_mv $(NAME)

.c.o : $(SRCS)
	$(CC) -c $^

objs_mv : 
	mv $(OBJS_O) $(OBJS_PATH)

$(NAME) : .c.o objs_mv
	$(AR) $@ $(OBJS)

clean :
	$(RM) $(OBJS)

fclean : clean
	$(RM) $(NAME)

re : clean all

#testeur
#t :
#	$(CC) $(SRCS) main.c -o $(NAME_TEST)
#tf :
#	$(CC) $(CFLAGS) $(SRCS) main.c -o $(NAME_TEST)
#
#tc :
#	$(RM) $(NAME_TEST)
#
.PHONY: .c.o objs_mv all clean fclean rec