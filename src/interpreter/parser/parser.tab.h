/* A Bison parser, made by GNU Bison 3.8.2.  */

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
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

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

#ifndef YY_YY_HOME_RUBEN_PROGRAMACION_ESTUDIO_C_RUBSQL_SRC_INTERPRETER_PARSER_PARSER_TAB_H_INCLUDED
# define YY_YY_HOME_RUBEN_PROGRAMACION_ESTUDIO_C_RUBSQL_SRC_INTERPRETER_PARSER_PARSER_TAB_H_INCLUDED
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
    IDENTIFIER = 258,              /* IDENTIFIER  */
    STRING_LITERAL = 259,          /* STRING_LITERAL  */
    NUMBER = 260,                  /* NUMBER  */
    REAL = 261,                    /* REAL  */
    USE = 262,                     /* USE  */
    CREATE = 263,                  /* CREATE  */
    SELECT = 264,                  /* SELECT  */
    DATABASE = 265,                /* DATABASE  */
    TABLE = 266,                   /* TABLE  */
    INTEGER = 267,                 /* INTEGER  */
    TINYINT = 268,                 /* TINYINT  */
    FLOAT = 269,                   /* FLOAT  */
    CHAR = 270,                    /* CHAR  */
    VARCHAR = 271,                 /* VARCHAR  */
    TEXT = 272,                    /* TEXT  */
    DATE = 273,                    /* DATE  */
    TIME = 274,                    /* TIME  */
    BOOL = 275,                    /* BOOL  */
    AUTO_INCREMENT = 276,          /* AUTO_INCREMENT  */
    DEFAULT = 277,                 /* DEFAULT  */
    UNIQUE = 278,                  /* UNIQUE  */
    NOT_NULL = 279,                /* NOT_NULL  */
    CHECK = 280,                   /* CHECK  */
    PRIMARY_KEY = 281,             /* PRIMARY_KEY  */
    FOREIGN_KEY = 282,             /* FOREIGN_KEY  */
    LPAR = 283,                    /* LPAR  */
    RPAR = 284,                    /* RPAR  */
    SEMICOLON = 285,               /* SEMICOLON  */
    COMMA = 286,                   /* COMMA  */
    DOT = 287,                     /* DOT  */
    PLUS = 288,                    /* PLUS  */
    MINUS = 289,                   /* MINUS  */
    MULT = 290,                    /* MULT  */
    DIVIDE = 291,                  /* DIVIDE  */
    EXP = 292,                     /* EXP  */
    AND = 293,                     /* AND  */
    OR = 294,                      /* OR  */
    GT = 295,                      /* GT  */
    LT = 296,                      /* LT  */
    EGT = 297,                     /* EGT  */
    ELT = 298,                     /* ELT  */
    EQ = 299,                      /* EQ  */
    NEG = 300,                     /* NEG  */
    END = 301                      /* END  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 16 "/home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/parser.y"

 char* sval;
 int ival;
 int bval;
 float fval;
 float generic_number;
 int token;

 struct wrapped_value* w_value;
 struct token_value* tkval;
 struct column_info* column_info;
 void* collection;

#line 124 "/home/ruben/Programacion/estudio/c++/rubSQL/src/interpreter/parser/parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_HOME_RUBEN_PROGRAMACION_ESTUDIO_C_RUBSQL_SRC_INTERPRETER_PARSER_PARSER_TAB_H_INCLUDED  */
