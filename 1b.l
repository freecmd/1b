%{
	#include<stdio.h>
	int i=0;
%}

digit [0-9]
letter [a-zA-Z_]

%%
{letter}({letter}|{digit})*		{i++;}
{digit}({letter}|{digit})*		{i;}
%%

int main(){
	printf("Enter the values: ");
	yylex();
	printf("Number of identifiers: %d\n", i);
	return 0;
}
