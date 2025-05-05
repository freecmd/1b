%{
#include <stdio.h>
int i = 0;  
%}
digit   [0-9]
letter  [a-z A-Z_]
%%
{letter}({letter}|{digit})*{i++;}  
{digit}+{;}     
%%
int yywrap() {
    return 1;   
}
int main() {
    printf("Enter the input: ");
    yylex(); 
    printf("Total number of identifiers = %d\n", i);  
    return 0;
}

