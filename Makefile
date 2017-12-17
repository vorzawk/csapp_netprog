CC=gcc
CFLAGS=-std=gnu99 -pthread -lrt

all: echoserveri echoclient hostinfo

echoserveri: csapp.c echo.o echoserveri.c
	$(CC) $(CFLAGS) csapp.c echo.o echoserveri.c -o echoserveri

echoclient: csapp.c echo.o echoclient.c
	$(CC) $(CFLAGS) csapp.c echoclient.c -o echoclient

hostinfo: csapp.c hostinfo.c
	$(CC) $(CFLAGS) csapp.c hostinfo.c -o hostinfo
clean:
	rm *o echoserveri echoclient
