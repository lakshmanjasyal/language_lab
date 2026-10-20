%{
#include<stdio.h>
extern FILE *yyin;
extern FILE *yyout;
%}
%%
[^{}] {ECHO;}
[{] {fprintf(yyout,"begin");}
[}] {fprintf(yyout,"end");}

%%
int yywrap(){
return 1;}
int main(){
yyin=fopen("old.c","r");
yyout=fopen("new.txt","w");
yylex();

printf("copied the contents of the file\n");
fclose(yyin);
fclose(yyout);
return 0;
}
