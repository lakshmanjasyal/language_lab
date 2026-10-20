%{
	#include<stdio.h>
	#include<stdlib.h>
	int yylex();
	void yyerror(const char *s);
%}
%token NUM ID IF ELSE RELOP


%%
stmt: expr '\n'
	{printf("Valid Statement\n");
	return 0;}
	;

expr 
: IF '(' condition ')' block ELSE block
;

condition 
: ID RELOP NUM
| ID RELOP ID
| NUM RELOP NUM
;

block 
: '{' statements '}' 
;

statements 
: expr
| assignment
;

assignment
: ID '=' NUM ';'
;

%%
int main()
{
	printf("Enter the C statement : ");
	if(yyparse()==0){
	//printf("Valid expression\n");
	return 0;
}
}
int yywrap() { return 1; }
void yyerror(const char *s)
{
	printf("Invalid statement\n");
}
