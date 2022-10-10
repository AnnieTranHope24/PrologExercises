append([],Y,Y).
append([H|T1],L2,[H|T3]) :- append(T1,L2,T3).


sublist(X,Y) :- append(_,X,L), append(L,_,Y), X\=[].

% if I reverse the empty list, I get the empty list.
ourReverse([],[]).
ourReverse([H|T],RL) :- ourReverse(T,RT),append(RT, [H], RL).

% reversing by a helper predicate that accumulates the reversed list
% head by head
helpRev([],Acc,Acc).
helpRev([H|T],Acc,Result) :- helpRev(T, [H|Acc], Result).

ourReverse2(L, RL) :- helpRev(L,[],RL).

myLength([],0).
myLength([_|T],Result) :- myLength(T,TResult),  Result is TResult+1.
