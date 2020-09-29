%{
#include<stdio.h>
int yylex(void);
void yyerror(char *);
%}

%token OPNCBRAC CLSCBRAC PRNT EQL OBRAC CBRAC VAR FUNC IO SEMICOL OPT

%%
PROG: OPNCBRAC MAINPROG CLSCBRAC;
MAINPROG: VAR EQL FUNCTION SEMICOL VAR EQL FUNCTION SEMICOL VFUNCTION SEMICOL
FUNCTION: FUNC OBRAC IO CBRAC;
VFUNCTION: FUNC OBRAC PRNT OPT CBRAC;
%%

void yyerror(char *s)
{
    fprintf(stderr,"%s \n",s);
}
int main(void){
    yyparse();
    return 0;
}