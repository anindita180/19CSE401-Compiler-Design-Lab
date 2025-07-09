%{
#include <stdio.h>
int pos = 0, neg = 0;
%}

%%
[-][0-9]+    { neg++; }
[0-9]+       { pos++; }
.|\n         ;
%%

int yywrap() { return 1; }

int main() {
    printf("Enter numbers (Ctrl+D to end):\n");
    yylex();
    printf("Positive numbers: %d\n", pos);
    printf("Negative numbers: %d\n", neg);
    return 0;
}

