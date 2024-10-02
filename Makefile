# Compiler and flags
CC = gcc
CFLAGS = -Wall -g  # Add more flags as needed

# Target executable
TARGET = main

# Find all .c files in the directory
SRCS = $(wildcard *.c)

# Convert the .c files to .o object files
OBJS = $(SRCS:.c=.o)

# Default target that builds the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Clean up object files and the executable
clean:
	rm -f $(OBJS) $(TARGET)

