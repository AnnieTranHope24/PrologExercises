%ex2
odd([_]) :- !.
odd([H|[Hl|T]]):-odd(T).
%handle tail = []
%ex3
helpRev([],Acc,Acc).
helpRev([H|T],Acc,Result) :- helpRev(T, [H|Acc], Result).
ourReverse2(L, RL) :- helpRev(L,[],RL).
pal(L):-ourReverse2(L, L).
%ex8
%zipped([1,2,3],[a,b,c],[pair(1,a),pair(2,b),pair(3,c)])
zipped([],L,L).
%zipped([H|T], L, 
