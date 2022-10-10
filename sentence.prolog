sentence(sen(N,P)) --> subject(N), predicate(P), ['.'].
subject(sub(D,N)) --> determiner(D), noun(N).
subject(sub(N)) --> noun(N).
predicate(pred(V)) --> verb(V).
predicate(pred(V,S)) --> verb(V), subject(S).
determiner(det(the)) --> [the].
determiner(det(a)) --> [a].
noun(noun(professor)) --> [professor].
noun(noun(home)) --> [home].
noun(noun(group)) --> [group].
noun(noun(students)) --> [students].
noun(noun(dog)) --> [dog].
verb(verb(walked)) --> [walked].
verb(verb(discovered)) --> [discovered].
verb(verb(jailed)) --> [jailed].
parse :- readln(L,_,_,_,lowercase), sentence(AST,L,[]), print(AST).
