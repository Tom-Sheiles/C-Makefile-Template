# Variables for compiler type and flags
CC= gcc
CFLAGS=-g -Wall
RM=-del

# Directory names for source files, intermediate compiled object files and final binaries
SRC=src
OBJ=Interm
BINDIR=Builds

# Srcs finds all c files in source Directory that match the pattern.
# Objs find all source files in the SRCS variable and create a corresponding object file
SRCS=${wildcard $(SRC)/*.c}
OBJS=$(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(SRCS))

# Final linked binary output
BIN=$(BINDIR)/main.exe

# release target
all:$(BIN)


# Compile with debug flags
debug: clean
debug: CFLAGS=-Wall -DDEBUG -g
debug:$(BIN)


# Link command
$(BIN): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@


# Compilation
$(OBJ)/%.o: $(SRC)/%.c
	$(CC) $(CFLAGS) -c $< -o $@


clean:
	$(RM) $(BINDIR)\* $(OBJ)\*


init:
	mkdir Builds
	mkdir Interm