%{
#include "parser.tab.h"
#include <string.h>  // Para strdup
#include <stdlib.h>
%}

%%

\"([^"]*)\"							{ yylval.sval = strdup(yytext+1);
		  						yylval.sval[strlen(yylval.sval)-1]='\0';
		  						return STRING_LITERAL; }

"USE" 								{ return USE; }
"CREATE" 							{ return CREATE;}
"SELECT"   							{ return SELECT; }

"DATABASE" 							{ return DATABASE; }
"TABLE" 							{ return TABLE;}

"INT" 								{ return INTEGER; }
"TINYINT" 							{ return TINYINT; }
"FLOAT" 							{ return FLOAT; }
"CHAR"       							{ return CHAR; }
"VARCHAR" 							{ return VARCHAR; }
"TEXT" 								{ return TEXT; }
"DATE" 								{ return DATE; }
"TIME" 								{ return TIME; }
"BOOL" 								{ return BOOL; }

"AUTO_INCREMENT" 						{ return AUTO_INCREMENT; }
"DEFAULT" 							{ return DEFAULT; }
"UNIQUE" 							{ return UNIQUE; }

"NOT NULL" 							{ return NOT_NULL;}
"CHECK" 							{ return CHECK; }
"PRIMARY KEY" 							{ return PRIMARY_KEY; }

"FOREIGN KEY" 							{ return FOREIGN_KEY; }

"(" 								{ return LPAR; }
")" 								{ return RPAR; }
";" 								{ return SEMICOLON;}
"," 								{ return COMMA; }
"." 								{ return DOT; }

"+" 								{ return PLUS; }
"-" 								{ return MINUS; }
"*" 								{ return MULT; }
"/" 								{ return DIVIDE; }
"^" 								{ return EXP; }

"&&" 								{ return AND;}
"||" 								{ return OR;}
">" 								{ return GT;}
"<" 								{ return LT;}
">=" 								{ return EGT;}
"<=" 								{ return ELT;}
"==" 								{ return EQ;}
"!" 								{ return NEG;}

"AND" 								{ return AND;}
"OR" 								{ return OR;}

[a-zA-Z_][a-zA-Z0-9_]* 						{ yylval.sval = strdup(yytext); return IDENTIFIER; }
[0-9]+ 								{ yylval.ival = atoi(yytext); return NUMBER;}

[ \t\n]+                ; 
.
%%

int yywrap() {
    return 1;
//([0-9]*[.])?[0-9]+	 					{ yylval.generic_number = atof(yytext); return NUMBER;}
}
