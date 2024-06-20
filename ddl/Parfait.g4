// Parfait.g4 - ANTLR grammar file

grammar Parfait;

parfaitFile: model* enum*;

model: 'model' ID '{' field* '}';
enum: 'enum' ID '{' enumValue* '}';

field: ID ':' type ('queryable')? ('default' '(' STRING ')')?;
enumValue: ID;

type: primitiveType | ID | '[' primitiveType ']';
primitiveType: 'uuid' | 'string' | 'datetime' | 'data';

ID: [a-zA-Z_][a-zA-Z0-9_]*;
STRING: '\'' .*? '\'';
WS: [ \t\r\n]+ -> skip;

