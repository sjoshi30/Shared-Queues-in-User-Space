CC=gcc
CFLAGS=-pthread -Wall
DEPS = main.h
OBJ = main.o queue.o
LIBS=-lm

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

mainv2: $(OBJ)
	gcc -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f *.o  

run :
	sudo ./mainv2

