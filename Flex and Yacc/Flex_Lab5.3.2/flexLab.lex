%{
    #include<stdio.h>
    #include"y.tab.h"
%}

%%
"{" return OPNCBRAC;
"}" return CLSCBRAC;
print return PRNT;
pt return FUNC;
opt return OPT;
"=" return EQL;
"(" return OBRAC;
")" return CBRAC;
[a-z]+ return VAR;
[A-Za-z] return IO;
";" return SEMICOL;
%%

int yywrap(void)
{
    return 1;
}