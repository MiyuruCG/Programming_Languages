likes(dan,sally).
likes(sally,dan).
likes(mary, jhon). 

dating(X,Y):-
    likes(X,Y),
    likes(Y,X).

frindship(X,Y):-
    likes(Y,X);
    likes(X,Y).

