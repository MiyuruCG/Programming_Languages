
%{
    #include<stdio.h>
%}

%%
int printf("Integer variable Type: \n");
char printf("Character Variable type: \n");
main printf("main programe \n");
"{" printf("Open Brackets: ");
"}" printf("Closing brackets \n");
; printf("Semi colon: ");
" " printf("space ");
. printf("Unexpected character \n");
%%

int yywrap(void)
{
    return 1;
}
