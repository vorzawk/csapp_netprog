CC=gcc
CFLAGS=-std=gnu99 -pthread -lrt

all: echoserveri echoclient

echoserveri: csapp.c echo.o echoserveri.c
	$(CC) $(CFLAGS) csapp.c echo.o echoserveri.c -o echoserveri

echoclient: csapp.c echo.o echoclient.c
	$(CC) $(CFLAGS) csapp.c echoclient.c -o echoclient

clean:
	rm *o echoserveri echoclient
