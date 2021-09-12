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
declaration: var-declaration | fun-declaration;
var-declaration: type-specifier ID T_SEMICOLON | type-specifier ID T_LEFTBRACKET NUM T_RIGHTBRACKET T_SEMICOLON;
type-specifier: INT | FLOAT | VOID;
fun-declaration: type-specifier ID T_LEFTPAREN params T_RIGHTPAREN compound-stmt;
params: param-list | VOID;
param-list: param-list T_COMMA param | param;
param: type-specifier ID | type-specifier ID T_LEFTBRACKET T_RIGHTBRACKET;
compound-stmt: T_LEFTBRACE local-declarations statement-list T_RIGHTBRACE;
local-declarations: local-declarations var-declaration | %empty;
statement-list: statement-list statement | %empty;
statement: expression-stmt | compound-stmt | selection-stmt | iteration-stmt |
return-stmt;
expression-stmt: expression T_SEMICOLON | T_SEMICOLON;

selection-stmt: 
                IF T_LEFTPAREN expression T_RIGHTPAREN selection-stmt
 
                | IF T_LEFTPAREN expression T_RIGHTPAREN statement ELSE statement
;

iteration-stmt: WHILE T_LEFTPAREN expression T_RIGHTPAREN statement;
return-stmt: RETURN T_SEMICOLON | RETURN expression T_SEMICOLON;
expression: var T_ASSIGNMENT expression | simple-expression;
var: ID | ID T_LEFTBRACKET expression T_RIGHTBRACKET;
simple-expression: additive-expression relop additive-expression | additive-expression;
relop: T_LESSER | T_LESSEQUAL | T_GREATER | T_GREATEREQUAL | T_EQUAL | T_NOTEQUAL;
additive-expression: additive-expression addop term | term;
addop: T_PLUS | T_MINUS;
term: term mulop factor | factor;
mulop: T_MULTIPLICATION | T_DIVISION;
factor: T_LEFTPAREN expression T_RIGHTPAREN | var | call | NUM;
call: ID T_LEFTPAREN args T_RIGHTPAREN;
args: arg-list | %empty;
arg-list: arg-list T_COMMA expression | expression;

%%

int main(void){
    yyparse ();
}


