#### Compiles 2 programs, sender and receiver
#### Type 'make' in the terminal
#### Type 'make clean' to remove object files after

CC = g++
OPTIONS = -Wall
EXECUTABLES = sender receiver
RECV_SOURCES = recv.cpp
RECV_OBJECT = recv.o
SENDER_SOURCES = sender.cpp
SENDER_OBJECT = sender.o

all: $(EXECUTABLES)

sender: $(SENDER_OBJECT)
	$(CC) $(OPTIONS) $(SENDER_OBJECT) -o sender

$(SENDER_OBJECT): $(SENDER_SOURCES)
	$(CC) $(OPTIONS) -c $(SENDER_SOURCES)

receiver: $(RECV_OBJECT)
	$(CC) $(OPTIONS) $(RECV_OBJECT) -o receiver

$(RECV_OBJECT): $(RECV_SOURCES)
	$(CC) $(OPTIONS) -c $(RECV_SOURCES)

clean:
	rm *.o
