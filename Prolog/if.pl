%these function dosent mean anything... its just to learn 'if'.

marks(50) :-
    write('ALMOST THERE').

marks(100) :-
    write('Complete').

marks(Other):-
    Grade is Other - 5,
    format('You are ~w', [Grade]).
    
