%{
    #include<stdio.h>
    #include"y.tab.h"

%}

%%
"{" return OPNCBRAC;
"}" return CLSCBRAC;
bgn return BEG;
end return END;
prt return PRT;
"+" return PLS;
"-" return MINUS;
"=" return EQL;
[A-Z]+ return VAR;
[0-9]+ return NUM;
";" return SEMICOLON;
%%

int yywrap(void)
{
    return 1;
}