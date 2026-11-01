% Lab 8 - Task 2: Sum of a list
sumlist([], 0).
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, TailSum),
    Sum is Head + TailSum.

% Lab 8 - Task 3: Total and average of three numbers
% Run with: ?- total_average.
total_average :-
    write('Enter first number: '), read(A),
    write('Enter second number: '), read(B),
    write('Enter third number: '), read(C),
    Total is A + B + C,
    Average is Total / 3,
    write('Total = '), write(Total), nl,
    write('Average = '), write(Average), nl.
