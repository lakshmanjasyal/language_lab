%{
#include<stdio.h>
int c_stat=0;
int identifier=0;
int assn=0;
int rel_op=0;
int keyword=0;
int integers=0;
extern FILE *yyout;
%}
%%

[;] {c_stat++}
[A-Za-z0-9_] {identifier++}
[=] {assn++}
"<"|">"|"<="|">="|"!="|"==" {rel_op++}
"int"|"if"|"else"|"float"|"double"|"void"|"switch"|"case"|"return"|"break"|" char"|"printf"|"scanf"|"else if" {keyword++}
[0-9]+ {integers++}
%%
int yywrap(){
return 1;}
int main(){

return 0;
}
