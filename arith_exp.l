%{
	#include "y.tab.h"
%}

%%
[0-9]+ {return NUMBER;}
[ \t]	;
\n 	{return '\n';}
"+"	{return '+';}
"-"	{return '-';}
"*"	{return '*';}
"/"	{return '/';}
"("	{return '(';}
")"	{return ')';}
. 	{return yytext[0];}

%%


