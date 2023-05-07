%{
    #include <stdio.h>
    int yylex(void);
    void yyerror(const char *s);
%}

%union {
    int number;
}

%token <number> NUMBER
%token EOL
%token ADD SUB MUL DIV

%type <number> expr

%right ADD SUB
%left MUL DIV

%%

program:
    program expr EOL { printf("Result: %d\n", $2); }
    |
    ;

expr:
    NUMBER { $$ = $1; }
    | expr ADD expr { $$ = $1 + $3; }
    | expr SUB expr { $$ = $1 - $3; }
    | expr MUL expr { $$ = $1 * $3; }
    | expr DIV expr { $$ = $1 / $3; }
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyparse();
    return 0;
}
