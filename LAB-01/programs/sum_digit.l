%{
#include <stdio.h>
int sum = 0;
%}

%%
[0-9] { sum += atoi(yytext); }
.|\n   ;
%%

int yywrap() { return 1; }

int main() {
    printf("Enter text (Ctrl+D to end):\n");
    yylex();
    printf("Sum of digits: %d\n", sum);
    return 0;
}

