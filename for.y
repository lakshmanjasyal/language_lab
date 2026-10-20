%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
void yyerror(char *s);
%}

%token FOR ID NUMBER RELOP INC

%%

statement:
    FOR '(' initialization ';' condition ';' increment ')'
    {
        printf("Valid for statement\n");
    }
    ;

initialization:
    ID '=' NUMBER
    ;

condition:
    ID RELOP NUMBER
    ;

increment:
    ID INC
    ;

%%

void yyerror(char *s)
{
    printf("Invalid for statement\n");
}

int main()
{
    printf("Enter a for statement: ");
    yyparse();
    return 0;
}