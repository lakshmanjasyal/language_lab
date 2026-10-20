%{
	#include<stdio.h>
	#include<stdlib.h>
	int yylex();
	void yyerror(const char *s);
%}
%token NUMBER
%left '+' '-'
%left '*' '/'

%%
stmt: expr '\n'
	{printf("Valid Expression\n");
	return 0;}
	;

expr 
: expr'+' term
| expr '-' term
| term
;

term 
: term '*' factor
| term '/' factor
| factor
;

factor
: '(' expr ')'
| NUMBER
;

%%
int main()
{
	printf("\nEnter an arithmetic expression: ");
	if(yyparse()==0){
	//printf("Valid expression\n");
	return 0;
}
}
int yywrap() { return 1; }
void yyerror(const char *s)
{
	printf("Invalid expression\n");
}
