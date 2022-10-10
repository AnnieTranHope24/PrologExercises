% the grammar for the calc language.
prog(AST) --> expr(AST).
% if the next token is an integer, then it is an expression that should be represented by a "num" node AST
expr(num(I)) --> [I],{integer(I)}.

% to evaluate a "num" node AST, ignore memory-in (parameter 2) for now, ignore memory-out (parameter 3) for now,
% and the result is the integer stored in the "num" node
evaluate(num(I),_,_,I).

% invoke: "calc." Then enter an expression as a list of tokens separated by spaces, e.g., "3" or "4 s + r" (without quotes).
% prolog will pass the list of tokens to the "prog" predicate to build the AST,
% then pass the AST to the evaluate predicate with memory-in set to 0 (and don't care about memory-out) to compute Val, then print Val.
calc :- readln(L,_,_,_,lowercase), prog(AST,L,[]), print(AST), print( = ), evaluate(AST,0,_,Val), print(Val).
