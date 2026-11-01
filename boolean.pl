% Lab 8 - Task 1: (A AND B) OR (NOT A AND NOT B)
% Truth tables
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

neg(true, false).
neg(false, true).

% Boolean expression
logicGate(A, B, Output) :-
    and(A, B, BothTrue),
    neg(A, NotA),
    neg(B, NotB),
    and(NotA, NotB, BothFalse),
    or(BothTrue, BothFalse, Output).
