%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
void yyerror(char *s);
%}

%token NUM

%%
expr:
    expr '+' expr { printf("= %d\n", $1 + $3); }
  | expr '-' expr { printf("= %d\n", $1 - $3); }
  | expr '*' expr { $$ = $1 * $3; }
  | expr '/' expr { $$ = $1 / $3; }
  | NUM           { $$ = $1; }
  ;
%%

int main() {
  printf("Enter expression: ");
  yyparse();
  return 0;
}

void yyerror(char *s) {
  printf("Invalid expression\n");
}
