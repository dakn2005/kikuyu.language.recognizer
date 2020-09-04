 % ['/Users/daudi/Desktop/prolog/db.pl'].
/*

male(albert).
male(edward).
female(alice).
female(victoria).

parents(edward,victoria,albert).
parents(alice,victoria,albert).

sisterof(X,Y) :- 
    female(X),
    parents(X,M,F),
    parents(Y,M,F).
*/

% ============================================================================

grandmother(X, Y) :- 
parent(X, Z), 
parent(Z, Y).
% format('~w is the grandmother of ~w', [X,Y]).

parent(X, Y) :- mother(X, Y). 
parent(X, Y) :- father(X, Y).

mother(mary, stan). 
mother(gwen, alice). 
mother(valery, gwen). 
mother(mwihaki, valery).
father(stan, alice).