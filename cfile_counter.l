%{
int chars = 0, words = 0, blanks = 0, lines = 0;
%}

%%
[a-zA-Z0-9_]+  { words++; chars += yyleng; }
[ \t]+         { blanks += yyleng; chars += yyleng; }
\n             { lines++; chars++; }
.              { chars++; }
%%

int main() {
  yylex();
  printf("Lines: %d\nWords: %d\nBlanks: %d\nChars: %d\n",
         lines, words, blanks, chars);
  return 0;
}
int yywrap() { return 1; }
