/* A Bison parser, made by GNU Bison 3.7.5.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_E1_TAB_H_INCLUDED
# define YY_YY_E1_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    START_OF_COMMENT = 258,        /* START_OF_COMMENT  */
    END_OF_COMMENT = 259,          /* END_OF_COMMENT  */
    IF = 260,                      /* IF  */
    ELSE = 261,                    /* ELSE  */
    INT = 262,                     /* INT  */
    RETURN = 263,                  /* RETURN  */
    VOID = 264,                    /* VOID  */
    WHILE = 265,                   /* WHILE  */
    PLUS = 266,                    /* PLUS  */
    MINUS = 267,                   /* MINUS  */
    MULTIPLY = 268,                /* MULTIPLY  */
    DIVIDE = 269,                  /* DIVIDE  */
    LESS_THAN = 270,               /* LESS_THAN  */
    LESS_OR_EQUAL = 271,           /* LESS_OR_EQUAL  */
    GREATER_THAN = 272,            /* GREATER_THAN  */
    GREATER_OR_EQUAL = 273,        /* GREATER_OR_EQUAL  */
    EQUALS = 274,                  /* EQUALS  */
    ASSIGNMENT = 275,              /* ASSIGNMENT  */
    NOT_EQUALS = 276,              /* NOT_EQUALS  */
    EOL = 277,                     /* EOL  */
    COMMA = 278,                   /* COMMA  */
    LEFT_PARANTHESIS = 279,        /* LEFT_PARANTHESIS  */
    RIGHT_PARANTHESIS = 280,       /* RIGHT_PARANTHESIS  */
    LEFT_BRACKET = 281,            /* LEFT_BRACKET  */
    RIGHT_BRACKET = 282,           /* RIGHT_BRACKET  */
    LEFT_SQR_BRACKET = 283,        /* LEFT_SQR_BRACKET  */
    RIGHT_SQR_BRACKET = 284,       /* RIGHT_SQR_BRACKET  */
    ID = 285,                      /* ID  */
    NUM = 286                      /* NUM  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_E1_TAB_H_INCLUDED  */
