CC = gcc
CFLAGS = $(OPTS) -Wall -g -O0 --std=gnu99
OBJS = dnsblock.o hash.o

dnsblock_c: dnsblock_c.o
	$(CC) $(CFLAGS) dnsblock_c.o -o dnsblock_c

dnsblock_c.o: dnsblock.c
	ln -sf dnsblock.c dnsblock_c.c
	$(CC) -c $(CFLAGS) -DC_HASH dnsblock_c.c

dnsblock.o: dnsblock.c
	$(CC) -c $(CFLAGS) dnsblock.c
hash.o: hash.s
	$(CC) -c $(CFLAGS) -gstabs+ hash.s

clean:
	rm -f dnsblock $(OBJS)
