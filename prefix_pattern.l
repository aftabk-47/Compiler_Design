%{
#include <stdio.h>
int main() {
  char s[] = "abcd";
  for (int i = 4; i > 0; i--) {
    for (int j = 0; j < i; j++) printf("%c", s[j]);
    printf("\n");
  }
  return 0;
}
%}

%%
%%

int yywrap() { return 1; }
