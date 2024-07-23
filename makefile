# Variables
CC = gcc
CFLAGS = -Wall -g
TARGET = bash_image_ansi
OBJS = main.o bash_image.o

# Default target
all: $(TARGET)

# Link object files to create the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Compile main.c into main.o
main.o: main.c bash_image.h
	$(CC) $(CFLAGS) -c main.c

helper.o: bash_image.c bash_image.h
	$(CC) $(CFLAGS) -c bash_image.c

# Clean up generated files
clean:
	rm -f $(TARGET) $(OBJS)

# Phony targets
.PHONY: all clean
