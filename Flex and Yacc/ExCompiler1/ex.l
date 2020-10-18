%{
    #include<stdio.h>
    #include "y.tab.h"
%}

%%
"print"     {return print; }
"arr"       {return arr; }
"add"       {return add; }
[ \t\n]     ;
[0-9]+      {yylval.num = atoi(yytext); return number; }
.           {ECHO; printf(" unexpected character "); }
%%

int yywrap (void) {return 1;}