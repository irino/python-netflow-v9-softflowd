#!/bin/sh

cython -3 -t --embed -o analyzer.c analyzer.py
gcc -O3 `python3-config --cflags` -fPIE -c analyzer.c -o analyzer.o
gcc -O3 analyzer.o `python3-config --embed --ldflags` -o analyzer
