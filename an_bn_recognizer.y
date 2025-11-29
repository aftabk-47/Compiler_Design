%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
int yyerror(char *s);
%}

%%
S: 'a' S 'b'
 | 'a' 'b'
 ;
%%

int main() {
  printf("Enter string: ");
  yyparse();
  printf("Valid a^n b^n string\n");
}

int yyerror(char *s) {
  printf("Invalid string\n");
  exit(0);
}
