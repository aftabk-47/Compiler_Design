%{
#include <stdio.h>
%}

%%
[0-9]+       { printf("NUM(%s) ", yytext); }
[+\-*/]      { printf("OP(%s) ", yytext); }
[ \t\n]+     { }
.            { printf("UNKNOWN(%s) ", yytext); }
%%

int main() { yylex(); return 0; }
int yywrap() { return 1; }
