sentence --> subject, predicate, ['.'].
subject --> determiner, noun.
predicate --> verb, subject.
determiner --> [a].
determiner --> [the].
noun --> [professor]; [home]; [group]; [dog].
verb --> [walked]; [discovered]; [jailed].
parse :- readln(L,_,_,_,lowercase), sentence(L,[]).