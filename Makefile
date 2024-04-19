CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRC = ft_isalpha.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c
OBJ = $(SRC:.c=.o)
LIBRARY = libft.a

all: $(LIBRARY)

$(LIBRARY): $(OBJ)
	ar rcs $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(LIBRARY)
