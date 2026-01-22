SRCS := writer.c
OBJS := $(SRCS:.c=.o)
TARGET := writer
CFLAGS := -Wall -Wextra -Werror -g
CC := $(CROSS_COMPILE)gcc

.PHONY: all clean
all: $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(OBJS) $(TARGET)