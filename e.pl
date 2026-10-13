pixel(X, Y) :-
    between(0, 4, X),
    between(0, 6, Y),
    (X =:= 0 ; Y =:= 0 ; Y =:= 3 ; Y =:= 6).
drawpixel(X, Y) :-
    ( pixel(X, Y) -> write('#') ; write('.')).
draw_row(Y) :-
    between(0, 4, X),
    drawpixel(X, Y),
    fail.
draw_row(_).
draw_e :-
    between(0, 6, Y),
    draw_row(Y),
    nl,
    fail.
draw_e.
