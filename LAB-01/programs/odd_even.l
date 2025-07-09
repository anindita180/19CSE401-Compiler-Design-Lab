%{
#include <stdio.h>
int num;
%}

%%
[0-9]+ {
    num = atoi(yytext);
    if (num % 2 == 0)
        printf("%d is Even\n", num);
    else
        printf("%d is Odd\n", num);
}
.|\n    ;
%%

int yywrap() { return 1; }

int main() {
    printf("Enter numbers (Ctrl+D to end):\n");
    yylex();
    return 0;
}

