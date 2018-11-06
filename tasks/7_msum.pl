% Разработать правила, реализующие предикат msum(L1, L2).
% Предикат удовлетворен, если L1 есть список списков чисел (произвольной длины), а L2 - список сумм чисел во вложенных списках. 
% Например:
%     ?- msum([[1, 2, 3], [], [-12, 13]], S].
%     S = [6, 0, 1]

sum([], 0).
sum([Head|Tail], Sum) :- sum(Tail, TSum), Sum is TSum + Head.

msum([], []).
msum([Head|Tail], Sum) :- sum(Head, SHead), msum(Tail, STail), append([SHead], STail, Sum).