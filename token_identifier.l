%{
#include <stdio.h>
%}

KEYWORD     int|float|if|else|while|return
IDENTIFIER  [a-zA-Z_][a-zA-Z0-9_]*
INTEGER     [0-9]+
FLOAT       [0-9]+\.[0-9]+
OP          [+\-*/<>]
COMMENT     "//".*

%%
{KEYWORD}     { printf("Keyword: %s\n", yytext); }
{FLOAT}       { printf("Float: %s\n", yytext); }
{INTEGER}     { printf("Integer: %s\n", yytext); }
{IDENTIFIER}  { printf("Identifier: %s\n", yytext); }
{OP}          { printf("Operator: %s\n", yytext); }
{COMMENT}     { }
[ \t\n]+      { }
.             { printf("Other: %s\n", yytext); }
%%

int main() { yylex(); return 0; }
int yywrap() { return 1; }
