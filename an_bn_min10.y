%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
int yyerror(char *s);
int a_count = 0;
%}

%%
S: A 'b' {
      if (a_count >= 10)
        printf("Valid string (a^n b^n, n>=10)\n");
      else
        printf("Invalid string (n < 10)\n");
    }
 ;

A:
    'a'     { a_count++; }
  | A 'a'   { a_count++; }
  ;
%%

int main() {
  printf("Enter string: ");
  yyparse();
}

int yyerror(char *s) {
  printf("Invalid input\n");
  return 0;
}
