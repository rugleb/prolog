% Разработать правила, реализующие предикат mapop(Op, L1, L2, L3).
% Предикат удовлетворен, если i-ый элемент списка L3 представляет собой результат применения инфиксной операции Op к i-ым элементам списков L1 и L2.
% Например:
%     ?- mapop(+, [1, 2, 3], [4, 5, 6], R).
%     R = [5, 7, 9]

compute(Op, X, Y, Result) :- Eq=..[Op, X, Y], Result is Eq.