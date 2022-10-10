% for lookup, first parameter is the integer we want to lookup, second parameter is the binary tree
% need to define recursive cases for lookup; see Practice 7.7
lookup(X,btnode(X,_,_)).

% for insert, first parameter is the integer we want to insert, second parameter is the binary tree,
%             third parameter is the new binary tree after the insertion is done
% need to define recursive cases for insert;
% maintain ordering of tree (left child is less than parent, right child is greater than parent)
% no change if N is already in the tree
insert(N,nil,btnode(N,nil,nil)).

% processlist steps through a list of values and inserts them one by one
% first parameter is the list of integers to insert, second parameter is the binary tree before processing the list,
% third parameter is the new tree after processing the list
processlist([],T,T).
processlist([H|T],Tree,NewTree) :- insert(H,Tree,HTree), processlist(T,HTree,NewTree).

% invoke: "buildtree." Then enter a list of numbers separated by spaces, e.g., "3" or "3 2 4"
% prolog will display the btnode structures once it has created the binary tree,
% then lookup 3 in the binary tree. Until 'insert' and 'lookup' are completed,
% buildtree can only handle lists of size one.
buildtree :- readln(L,_,_,_,lowercase), processlist(L,nil,T),print(T),lookup(3,T).
