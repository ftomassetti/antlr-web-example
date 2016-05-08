grammar todo;

elements
    : (element|emptyLine)* EOF
    ;

element
    : '*' ( ' ' | '\t' )* CONTENT NL+
    ;

emptyLine
    : NL
    ;

NL
    : '\r' | '\n' 
    ;

CONTENT
    : [a-zA-Z0-9_][a-zA-Z0-9_ \t]*
    ;    