%{
int lines = 0, chars = 0;
%}

%%
\n      { lines++; chars++; }
.       { chars++; }
%%

int main() {
  yylex();
  printf("Lines: %d\nCharacters: %d\n", lines, chars);
  return 0;
}
int yywrap() { return 1; }
