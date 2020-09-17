%{
#include<stdio.h>
int yylex(void);
void yyerror(char *);   
%}

%token INTEGER CHARACTER MAIN OPBRAC CLBRAC OPBCLB EQUALS NUM VAR END PRINTING SEMICOLON

%%
PROG: MAINFUNC;
MAINFUNC: STATMAIN OPBRAC FUNC CLBRAC;
STATMAIN: INTEGER MAIN OPBCLB;
FUNC: INTEGER VAR EQUALS NUM SEMICOLON PRINTING SEMICOLON END SEMICOLON;
%%

void yyerror(char *s)
{
    fprintf(stderr,"%s \n",s);
}
int main(void){
    yyparse();
    return 0;
}