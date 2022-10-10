datatype btree = nil' | btnode of int * btree * btree;

btnode(3,nil',nil');

btnode(2,btnode(1,nil',nil'),btnode(3,nil',nil'));
