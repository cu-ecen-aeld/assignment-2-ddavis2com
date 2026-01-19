SRCS := writer.c
OBJS := $(SRCS:.c=.o)
TARGET := writer
CFLAGS := -Wall -Wextra -Werror -g
CC := gcc

.PHONY: all clean
all: $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(OBJS) $(TARGET)