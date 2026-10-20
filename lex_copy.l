%{
#include<stdio.h>
extern FILE *yyin;
extern FILE *yyout;
%}
%%
[a-zA-Z] {ECHO;}
[0-9] { }
\n {fprintf(yyout," ");}

%%
int yywrap(){
return 1;}
int main(){
yyin=fopen("input.txt","r");
yyout=fopen("output.txt","w");
yylex();

printf("copied the contents of the file\n");
fclose(yyin);
fclose(yyout);
return 0;
}
