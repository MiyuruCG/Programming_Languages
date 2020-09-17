%{
#include<stdio.h>
int yylex(void);
void yyerror(char *);
%}

%token OPNCBRAC CLSCBRAC  BEG END PRT PLS MINUS EQL VAR SEMICOLON NUM

%%
PROG: MAINP;
MAINP: BEG STSLIST END;
STSLIST: OPNCBRAC FUNC CLSCBRAC;
FUNC: VAR EQL VAR SEMICOLON VAR EQL VAR SEMICOLON PRT VAR SEMICOLON 
%%

void yyerror(char *s)
{
    fprintf(stderr,"%s \n",s);
}
int main(void){
    yyparse();
    return 0;
}