%{
    #include<stdio.h>
    #include"y.tab.h"

%}

%%
int return INTEGER;
char return CHARACTER;
main return MAIN;
"()" return OPBCLB;
"=" return EQUALS;
"{"  return OPBRAC;
"}" return CLBRAC;
[0-9]+ return NUM;
return return END;
print return PRINTING;
[a-z]+ return VAR;
";" return SEMICOLON;
%%

int yywrap(void)
{
    return 1;
}