%{
#include "y.tab.h"
%}

%%

"for"           return FOR;
[a-zA-Z_][a-zA-Z0-9_]*   return ID;
[0-9]+          return NUMBER;
"++"            return INC;
"<"|">"|"<="|">="|"=="|"!="   return RELOP;
"="             return '=';

[();]           return yytext[0];
[ \t\n]         ;

.               return yytext[0];

%%