%{
#include <stdio.h>
int words = 0;
%}

%%
[a-zA-Z0-9]+    { words++; }
.|\n            ;  // Ignore everything else
%%

int yywrap() { return 1; }

int main() {
    printf("Enter text (Ctrl+D to end):\n");
    yylex();
    printf("Total words: %d\n", words);
    return 0;
}

