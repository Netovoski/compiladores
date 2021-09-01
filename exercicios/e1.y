/* Programa bison p a linguagem especificada no exemplo 1 (E1).
*  Por enqto, serve como driver para interagir com um programa  flex.*/

%token NUM
%token NUM
%token CONST
%token INT
%token PLUS
%token MINUS

%%

program:

/* void */

// ... yyparse() ... yylex()...

%%

int main () ...
