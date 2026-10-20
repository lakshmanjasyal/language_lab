%{
#include<stdio.h>
int characters=0;
int words=0;
int lines=0;
extern FILE *yyin;
%}
%%
\n {lines++;}
[a-zA-Z]+ {
words++;
characters+=yyleng;
}
[0-9] { }
[ ] { }
%%

int yywrap(){
return 1;
}

int main(){

yyin=fopen("sample.txt","r");
yylex();
printf("No. of characters:%d\n",characters);
printf("No of words:%d\n",words);
printf("No. of lines:%d\n",lines);

return 0;
}
