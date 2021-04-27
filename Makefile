CC = gcc
CFLAGS = -Wall -Wextra -g
OBJS = dnsblock.o

dnsblock: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o dnsblock

dnsblock.o: dnsblock.c
	$(CC) $(CFLAGS) -c dnsblock.c

clean:
	rm -f dnsblock $(OBJS)
