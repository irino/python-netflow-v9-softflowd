#!/bin/sh

cython -3 -t --embed -o analyzer.c analyzer.pyx
gcc `python3-config --cflags` -fPIE -c analyzer.c -o analyzer.o
gcc analyzer.o `python3-config --embed --ldflags` -o analyzer
