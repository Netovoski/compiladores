/* 
 * Template de programa bison para a linguagem E1.
 * Serve apenas para definir tokens associados ao analisador léxico implentado com flex.
 * Executar  'bison -d e1.y' para gerar arquivos e1.tab.c e e1.tab.h.
 * Template de programa bison E1 atividade
 *  
 *
 */
%{
#include <stdarg.h>
#include <stdlib.h>
#include <stdio.h>
#include "e1_line.h"

extern int yylineno;

#define YYSTYPE char *
int yylex();

void yyerror(const char *s);

int yydebug = 1;
int indent  = 0;
char *iden_dum;

%}

//TOKENS DEFINITION


%token START_OF_COMMENT
%token END_OF_COMEMENT
%token IF
%token ELSE
%token FLOAT
%token RETURN
%token VOID
%token WHILE

%token CONST

%token T_PLUS
%token T_MINUS
%token T_MULTIPLICATION
%token T_DIVISION

%token T_LESSEQUAL
%token T_GREATEREQUAL
%token T_GREATER
%token T_LESSER

%token T_EQUAL
%token T_NOTEQUAL
%token T_ASSIGNMENT
%token T_SEMICOLON
%token T_COMMA

%token T_LEFTBRACE
%token T_RIGHTBRACE
%token T_LEFTBRACKET
%token T_RIGHTBRACKET
%token T_LEFTPAREN
%token T_RIGHTPAREN


%token ID 
%token NUM 
%token INT


// REGRAS GRAMATICAIS

%%
program: declaration-list;
declaration-list: declaration-list declaration | declaration;

%%

int main(void){
    yyparse ();
}


