%{
#include <stdio.h>
#include <stdlib.h>
extern FILE *yyin;

int yywrap(void)
{
        return 1;
}

int statements=0, identifiers=0, assignment=0;
int relational=0, keywords=0, integers=0;
%}

%%

"int"|"float"|"char"|"if"|"else"|"for"|"while"|"return" { keywords++; }
[0-9]+ { integers++; }
[a-zA-Z_][a-zA-Z0-9_]* { identifiers++; }
"=="|"!="|"<="|">="|"<"|">" { relational++; }
"=" { assignment++; }
";" { statements++; }
[ \t\n]+ { }
. { }
"#include<stdio.h>" ;
%%

int main()
{
        yyin=fopen("old.c", "r");
        yylex();

        printf("Statements = %d\n", statements);
        printf("Identifiers = %d\n", identifiers);
        printf("Assignment operators = %d\n", assignment);
        printf("Relational operators = %d\n", relational);
        printf("Keywords = %d\n", keywords);
        printf("Integers = %d\n", integers);

        printf("\nProgram output:\n");
        system("gcc old.c -o old_program");
        system("./old_program");

    return 0;
}