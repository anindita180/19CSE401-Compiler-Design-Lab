%{
#include <stdio.h>
%}

%%
[aeiouAEIOU] { printf("%s is a vowel\n", yytext); }
[a-zA-Z]     { printf("%s is NOT a vowel\n", yytext); }
.|\n         ;  // Ignore others
%%

int yywrap() { return 1; }

int main() {
    printf("Enter text (Ctrl+D to end):\n");
    yylex();
    return 0;
}

