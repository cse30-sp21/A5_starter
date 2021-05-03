CC = gcc
CFLAGS += -Wall -g -O0 --std=gnu99
OBJS = dnsblock_c.o dnsblock.o hash.o

dnsblock_c: dnsblock_c.o
	$(CC) $(CFLAGS) -DC_HASH dnsblock.o -o dnsblock_c

dnsblock: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o dnsblock


dnsblock_c.o: dnsblock.c
	$(CC) -c $(CFLAGS) -DC_HASH dnsblock.c
dnsblock.o: dnsblock.c
	$(CC) -c $(CFLAGS) dnsblock.c
hash.o: hash.s
	$(CC) -c $(CFLAGS) -gstabs+ hash.s

clean:
	rm -f dnsblock $(OBJS)
