CC = gcc
CFLAGS = -Wall -Wextra -g
OBJS = dnsblock.o hash.o

dnsblock: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o dnsblock

dnsblock.o: dnsblock.c
	$(CC) $(CFLAGS) -c dnsblock.c
hash.o: hash.s
	$(CC) $(CFLAGS) -gstabs+ hash.s

clean:
	rm -f dnsblock $(OBJS)
