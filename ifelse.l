%{
	#include "y.tab.h"
%}

%%

"if"	{return IF;}
"else"	{return ELSE;}
[a-zA-Z][a-zA-Z0-9]*	{return ID;}
[0-9]+ {return NUM;}
"=="|">"|"<"|"<="|">="|"!=" {return RELOP;}
"="	{return '=';}
"("	{return '(';}
")"	{return ')';}
"{"	{return '{';}
"}"	{return '}';}
";" 	{return ';' ;}
\n 	{return '\n';}
[ \t] ;
. 	{return yytext[0];}
%%


