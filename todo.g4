grammar todo;

elements
    : (element|emptyLine)* EOF
    ;

element
    : 'todo' STRING NL
    ;

emptyLine
    : NL
    ;

NL
    : '\r' | '\n' 
    ;

WS
    : ( ' ' | '\t' ) -> channel ( HIDDEN )
    ;

STRING
    : ( '%s' | '%i' )? '"' ( ~ '"' )* '"'
    ;    