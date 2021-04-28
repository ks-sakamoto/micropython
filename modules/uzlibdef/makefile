##
## tgunzip  -  gzip decompressor example
##
## GCC makefile (Linux, FreeBSD, BeOS and QNX)
##
## Copyright (c) 2003 by Joergen Ibsen / Jibz
## All Rights Reserved
##
## http://www.ibsensoftware.com/
##

target  = moduzlibdef.c
objects = moduzlibdef.o
libs    = lib/libtinf.a

COPT    = -Os
CFLAGS  = -Wall -Isrc $(COPT)
LDFLAGS = $(CFLAGS) -s -Wl,-Map,ld.map

.PHONY: all clean

all: $(target)

$(target): $(objects) $(libs)
	$(CC) $(LDFLAGS) -o $@ $^ $(libs)

%.o : %.c
	$(CC) $(CFLAGS) -c $<

clean:
	$(RM) $(objects) $(target)
