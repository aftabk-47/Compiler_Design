%{
int v = 0, c = 0;
%}

%%
[AEIOUaeiou]   { v++; }
[a-zA-Z]       { c++; }
.|\n           { }
%%

int main() {
  yylex();
  printf("Vowels: %d\nConsonants: %d\n", v, c);
  return 0;
}
int yywrap() { return 1; }
