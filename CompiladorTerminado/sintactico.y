%{

  #include <stdio.h>
  #include <stdlib.h>
  #include <math.h>
  #include "string.h"
  extern FILE *yyin;
  void yyerror(char *s);

%}

%union
{
int real;
}

%start INICIO;

%token DIGITO
%token GATO
%token NOTAS
%token M

%type <real> valor

%%

INICIO: INICIO valor; | valor;
			
valor:	NOTAS {printf ("");}; | NOTAS M {printf("");}; | NOTAS DIGITO {printf ("");}; |NOTAS M DIGITO {printf("");} | NOTAS GATO M {printf ("");}; | NOTAS GATO {printf ("");}

%%

void yyerror(char *s){
	printf("Error sintactico %s \n",s);}

int main(int argc,char **argv){
	
	if (argc>1)
		yyin=fopen(argv[1],"rt");
	else
		//yyin=stdin;
		yyin=fopen("entrada.txt","rt");
		

	yyparse();
	return 0;}
