%{
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char *);
int count=0;
int array[5];
void addValue(int num);
void printArr();
%}

%union {int num;}
%start exp
%token print
%token arr
%token add
%token <num> number
%type <num> exp val

%%
exp       : print val           {printf("num: %d\n", $2); }
            | add val           {addValue($2); }
            | exp print val     {printf("num: %d\n", $3);}
            | exp add val           {addValue($3); }
val        : number             {$$ = $1; }
    

%%

void yyerror(char *s)
{
    fprintf(stderr,"%s \n",s);
}

void addValue(int num){
    array[count] = num;
    count = count + 1;
}

int main(void){
    printf("Enter 5 numbers to sort \n");
    yyparse();
    return 0;
}