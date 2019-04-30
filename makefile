CC = g++

OBJ = ./build
SRC = ./src
BIN = ./bin
INC = ./include

PROG = $(BIN)/mainRun

CPPFLAGS = -Wall -pedantic -std=c++11 -I$(INC)

OBJS = $(OBJ)/LinkedList.o $(OBJ)/TestList.o $(OBJ)/main.o

all: mkdirs $(PROG)

mkdirs:
	mkdir -p $(BIN)
	mkdir -p $(OBJ)

$(PROG): $(OBJS)
	$(CC) $(CPPFLAGS) $(OBJS) -o $(PROG)

$(OBJ)/LinkedList.o: $(SRC)/LinkedList.cpp $(INC)/LinkedList.h $(INC)/Node.h
	$(CC) $(CPPFLAGS) -c $(SRC)/LinkedList.cpp -o $(OBJ)/LinkedList.o

$(OBJ)/TestList.o: $(SRC)/TestList.cpp $(INC)/TestList.h
	$(CC) $(CPPFLAGS) -c $(SRC)/TestList.cpp -o $(OBJ)/TestList.o

$(OBJ)/main.o: $(SRC)/main.cpp
	$(CC) $(CPPFLAGS) -c $(SRC)/main.cpp -o $(OBJ)/main.o

clean:
	rm -f $(BIN)/*
	rm -f $(OBJ)/*