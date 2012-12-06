#ifndef YYTOKENTYPE
# define YYTOKENTYPE

   enum yytokentype {
     DIGITO = 258,
     GATO = 259,
     NOTAS = 260,
     M = 261
   };
#endif

#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

#line 13 "sintactico.y"

int real;

#line 64 "sintactico.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE 
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;
