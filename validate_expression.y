%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
void yyerror(const char *s);
%}

%token NUM

%left '+' '-'
%left '*' '/'

%%
expr:
    expr '+' term
  | expr '-' term
  | term
  ;

term:
    term '*' factor
  | term '/' factor
  | factor
  ;

factor:
    NUM
  ;
%%

int main() {
  printf("Enter expression: ");
  yyparse();
  printf("Valid expression\n");
}

void yyerror(const char *s) {
  printf("Invalid expression\n");
  exit(0);
}
