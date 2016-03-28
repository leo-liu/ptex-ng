#
# Copyright (c) 2014, 2015, 2016 Clerk Ma
#
# You may freely use, modify and/or distribute this file.
#

CC = gcc
CFLAGS = -g3 -Wno-unused-result -I.. -I../ptexenc/ -I../../libs/zlib/include
LDFLAGS = -lm
LIBS = libdpx.a libpng.a libz.a libptexenc.a libkpathsea.a

objects = \
	aptex.o\
	aptex-src.o\
	aptex-synctex.o

aptex: $(objects)
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)
	cp aptex ptex-ng

aptex.o: aptex.c
	$(CC) $(CFLAGS) -c -o $@ $^

aptex-src.o: aptex-src.c
	$(CC) $(CFLAGS) -c -o $@ $^

aptex-synctex.o: aptex-synctex.c
	$(CC) $(CFLAGS) -c -o $@ $^

.PHONY: clean

clean:
	rm aptex ptex-ng *.o
