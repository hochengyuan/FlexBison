%{
#include <iostream>
#include <stdlib.h>
#include "tinybasic.tab.h"  /* We want the tokens defined in flex.y. */
%}

%option noyywrap

%%

                        /* 'val' in 'yylval.val' is the field declared in
                           calc1.y with the %union directive. */

"PRINT"					{ return PRINT; }
"IF"					{ return IF; }
"THEN"					{ return THEN; }
"GOTO"					{ return GOTO; }
"INPUT"					{ return INPUT; }
"LET"					{ return LET; }
"GOSUB"					{ return GOSUB; }
"RETURN"				{ return RETURN; }
"CLEAR"					{ return CLEAR; }
"LIST"					{ return LIST; }
"RUN"					{ return RUN; }
"END"					{ return END; }
\r?\n\r?     			{ return CR; }
"<"						{ return RELOP; }
">"                     { return RELOP; }
"="						{ return RELOP; }
[0-9]+                  { yylval.val = atoi(yytext); return INTEGER; }
"+"                     { return PLUS; }
"-"                     { return MIN; }
"*"                     { return MUL; }
"/"                     { return DIV; }
[A-Z]  			        { return VAR; }
","						{ return COMMA; }
^"[A-Za-z0-9_ ]+"$	    { return STRING; }
"("                     { return LPAREN; }
")"                     { return RPAREN; }


%%

