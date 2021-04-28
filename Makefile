CC = gcc
CFLAGS = -Wall -g -O0 --std=gnu99
OBJS = dnsblock.o hash.o

dnsblock: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o dnsblock

dnsblock.o: dnsblock.c
	$(CC) $(CFLAGS) dnsblock.c
hash.o: hash.s
	$(CC) -c $(CFLAGS) -gstabs+ hash.s

clean:
	rm -f dnsblock $(OBJS)
