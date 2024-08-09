%{
#include <stdio.h>
#include <string.h>  
#include <stdlib.h>
#include "parser.tab.h"
//simplificar esto?
#include "../commands/interface.h"

extern int yylex();

void yyerror(const char *s);

int yyparse();
%}

%union{
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
};

%token<sval> IDENTIFIER STRING_LITERAL
%token<ival> NUMBER
%token<fval> REAL;

%token USE CREATE SELECT
%token DATABASE TABLE
%token INTEGER TINYINT FLOAT CHAR VARCHAR TEXT DATE TIME BOOL
%token AUTO_INCREMENT DEFAULT UNIQUE
%token NOT_NULL CHECK PRIMARY_KEY
%token FOREIGN_KEY
%token LPAR RPAR SEMICOLON COMMA DOT

%token PLUS MINUS MULT DIVIDE EXP
%token AND OR GT LT EGT ELT EQ NEG
%token END



%type <token> object;

%type <column_info> column;

%type <tkval> type-data;
%type <tkval> attribute;
%type <tkval> restr-column;

%type <collection> attributes-list;
%type <collection> restr-column-list;
%type <collection> columns-list

%type <w_value> value;

%type <token> type-data-dynsize;
%type <token> type-data-sticsize;

%type <token> attribute-const;
%type <token> attribute-value;

%type <token> restr-column-const;
%type <token> restr-column-value;
%type <token> restr-column-expr;

%type <fval> expr
%type <bval> condition

%left PLUS MINUS
%left MULT DIVIDE
%left EXP

%left OR
%left AND
%left NEG
%left GT LT EGT ELT EQ

%start input

%%

input:
     command-list

command-list:
     command-list command | command

command:
       create 

create:
      CREATE TABLE IDENTIFIER LPAR columns-list RPAR  {
	create_table($3,$5);
      }
      | CREATE DATABASE IDENTIFIER {
      }

columns-list:
	columns-list COMMA column 						{ append_data_collection($$,$3);}
	| column 								{ $$ = init_collection(C_COLUMN_INFO, $1);}

column:
      IDENTIFIER type-data attributes-list restr-column-list 			{$$ = pack_column_info($1,$2,$3,$4);}

type-data:
	type-data-dynsize LPAR value RPAR 					{$$ = new_token_value($1,$3, T_NUMBER);} 
	| type-data-dynsize 							{$$ = new_token_value($1,NO_VAL);} 
	| type-data-sticsize 							{$$ = new_token_value($1,NO_VAL);}


type-data-dynsize:
	INTEGER 								{$$ = INTEGER;}
	| TINYINT 								{$$ = TINYINT;}
	| FLOAT 								{$$ = FLOAT;}
	| CHAR 									{$$ = CHAR;}
	| VARCHAR 								{$$ = VARCHAR;}


type-data-sticsize:
	TEXT 									{$$ = TEXT;}
	| DATE 									{$$ = DATE;}
	| TIME 									{$$ = TIME;}
	| BOOL 									{$$ = BOOL;}

attributes-list:
	attributes-list attribute 						{append_data_collection($$,$2);} 
	| attribute  								{$$ = init_collection(C_WTKVAL,$1);}
	| %empty 								{$$ = EMPTY_COLLECTION;}

attribute:
	 attribute-const 							{$$ = new_token_value($1,NO_VAL); }
	 | attribute-value LPAR value RPAR 					{$$ = new_token_value($1,$3,T_SAME_AS_FATHER); }

attribute-const:
	 AUTO_INCREMENT 							{$$ = AUTO_INCREMENT;}
	 | UNIQUE 								{$$ = UNIQUE;}

attribute-value:
	DEFAULT 								{$$ = DEFAULT;}

restr-column-list:
	restr-column-list restr-column  					{append_data_collection($$,$2);}
	| restr-column 								{$$ = init_collection(C_WTKVAL, $1);}
	| %empty 								{$$ = EMPTY_COLLECTION;}

restr-column:
	restr-column-const 
	| restr-column-value LPAR value RPAR
	| restr-column-expr expr

restr-column-const:
	NOT_NULL								{$$ = NOT_NULL;}

restr-column-value:
	PRIMARY_KEY 								{$$ = PRIMARY_KEY;}

restr-column-expr:
	CHECK 									{$$ = CHECK;}

value:
     NUMBER 									{$$ = i_init_w_value($1);}
     | STRING_LITERAL 								{$$ = c_init_w_value($1);}
     | REAL 									{$$ = f_init_w_value($1);}

expr:
    NUMBER
    | %empty
    | expr PLUS expr 								{ $$ = $1+$3;}
    | expr MINUS expr 								{ $$ = $1-$3;}
    | expr MULT expr 								{ $$ = $1*$3;}
    | expr DIVIDE expr 								{ $$ = $1/$3;}
    | LPAR expr RPAR 								{ $$ = $2;}

condition:
     expr OR expr 								{ $$ = $1 || $3;}
    | expr AND expr 								{ $$ = $1 && $3;}
    | NEG expr 									{ $$ = !$2;}
    | expr GT expr 								{ $$ = $1 > $3;}
    | expr LT expr 								{ $$ = $1 < $3;}
    | expr EGT expr 								{ $$ = $1 >= $3;}
    | expr ELT expr 								{ $$ = $1 <= $3;}
    | expr EQ expr 								{ $$ = $1 == $3;}

%%

int main() {
    return yyparse();
}

void yyerror(const char* s) {
printf("Error:%s",s);
    }
