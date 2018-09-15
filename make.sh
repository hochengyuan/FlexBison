#!/bin/sh

flex tinybasic.l
bison -d tinybasic.y
g++ lex.yy.c tinybasic.tab.c

#rm lex.yy.c $1.tab.h $1.tab.c
