%{
    #include "parser.tab.h"
    void yyerror(const char *s);
    int yywrap(void) { return 1; }
%}

%%

[0-9]+ { yylval.number = atoi(yytext); return NUMBER; }
[ \t]  { /* ignore whitespace */ }
\n     { return EOL; }
"+"    { return ADD; }
"-"    { return SUB; }
"*"    { return MUL; }
"/"    { return DIV; }
.      { yyerror("invalid character"); }

%%

