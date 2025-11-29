%{
int maxlen = 0;
char longest[100];
%}

%%
[a-zA-Z]+ {
  if (yyleng > maxlen) {
    maxlen = yyleng;
    strcpy(longest, yytext);
  }
}
.|\n ;
%%

int main() {
  yylex();
  printf("Longest word: %s (Length: %d)\n", longest, maxlen);
  return 0;
}
int yywrap() { return 1; }
