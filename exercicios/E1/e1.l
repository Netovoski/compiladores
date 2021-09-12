/* Lexico Analisador */
%x IN_COMMENT 

%{
#include <stdio.h>
#include <string.h>
#include "e1.tab.h"


extern int line_number;

        void yyerror(char const *s){
            fprintf(stderr, "Linha %d: %s\n", line_number, s);
    }
 
    extern char* yytext;
%}

%option noyywrap


digit               [0-9]
letter              [a-zA-Z]



%%


<INITIAL>"/*"         {BEGIN(IN_COMMENT);}
<IN_COMMENT>"*/"      {BEGIN(INITIAL);}
<IN_COMMENT>[^*\n]+   ;
<IN_COMMENT>"*"       ;
<IN_COMMENT>\n        {line_number++;}
<IN_COMMENT><<EOF>>   {
                        printf("Indetermido comentário linha %d!", line_number);
                        yyterminate();
                      }
"if"        return IF; 
"int"       return INT; 
"else"      return ELSE; 
"float"     return FLOAT; 
"return"    return RETURN; 
"void"      return VOID; 
"while"     return WHILE; 

"const"     return CONST; 

"+"         return T_PLUS; 
"-"         return T_MINUS; 
"*"         return T_MULTIPLICATION; 
"/"         return T_DIVISION; 

"<="        return T_LESSEQUAL; 
">="        return T_GREATEREQUAL; 
">"         return T_GREATER;
"<"         return T_LESSER;
"=="        return T_EQUAL;
"!="        return T_NOTEQUAL; 
"="         return T_ASSIGNMENT; 
";"         return T_SEMICOLON; 
","         return T_COMMA; 

"{"         return T_LEFTBRACE; 
"}"         return T_RIGHTBRACE; 
"["         return T_LEFTBRACKET; 
"]"         return T_RIGHTBRACKET; 
"("         return T_LEFTPAREN; 
")"         return T_RIGHTPAREN; 

[a-zA-Z][a-zA-Z]*       return ID; }
[0-9][0-9]*             return NUM; }
[\n]                    { line_number++ }
"."                     yyerror("Syntax com ERROR");
[a-zA-Z0-9_]+           yyerror("Identificador contém alfanumerico caracter!");
[*][/]                  yyerror("Erro ao inicializar caracterer no comentário");

