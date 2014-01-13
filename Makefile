CC=gcc
CFLAGS=-Wall -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include 
LDFLAGS=-lglib-2.0 -lcurl -ltidy

OBJECTS=500px-photo-parser.o 500px-photo-parser-func.o
SOURCES=500px-photo-parser.c 500px-photo-parser-func.c

500px-photo-parser: $(OBJECTS)
	        $(CC) $(CFLAGS) $(OBJECTS) -o $@ $(LDFLAGS)

.PHONY:        clean

clean:
	        -rm -f 500px-photo-parser *.o *~

