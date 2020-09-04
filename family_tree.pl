% ['/Users/daudi/Desktop/prolog/family_tree.pl'].

% READ: relation_of

female(mwihaki). female(njambi). 

female(sue). female(mum_lucy). female(geraldine). female(nash). female(lucy). female(pree). female(dido). 
female(kyla). female(tish). female(teffy). female(india). female(stella).

male(pk). male(gatigwa). male(githinji). male(kimana). male(guka). male(gg). male(ignitius). 

male(mark). male(gad). male(pasi). male(kimanajr1).

father(pk, githinji).
father(pk, gatigwa).
father(pk,kimana).
father(guka,pk).
father(gg, mwihaki).

father(ignitius, sue).
father(ignitius, lucy).
father(ignitius, pree).
father(ignitius, dido).
father(ignitius, gad).
father(ignitius, mark).

father(sam, kyla).
father(pasi, tish).
father(pasi, teffy).

father(mark, india).

mother(mwihaki, githinji).
mother(mwihaki, gatigwa).
mother(mwihaki, kimana).
mother(njambi,pk).
mother(mum_lucy, mwihaki).

mother(geraldine,sue).
mother(geraldine, lucy).
mother(geraldine, pree).
mother(geraldine, dido).
mother(geraldine, gad).
mother(geraldine, mark).

mother(pree,kyla).
mother(lucy, tish).
mother(lucy, teffy).

mother(stella,india).

husband(pasi,lucy).
husband(kimana,sue).
husband(mark,stella).

wife(lucy,pasi).
wife(sue,kimana).
wife(stella,mark).


/*
mother_law(A,B).
father_law(A,B).

fatherOf(X,Y) :- father(X,Y), format('~w father of ~w ~n', [X,Y]).
motherOf(X,Y) :- mother(X,Y), format('~w mother of ~w ~n', [X,Y]).
fatherLOf(X,Y) :- father_law(X,Y), format('~w father-in-law of ~w ~n', [X,Y]).
motherLOf(X,Y) :- mother_law(X,Y), format('~w mother-in-law of ~w ~n', [X,Y]).


father_law(pk,sue).
father_law(ignitius, kimana).

mother_law(mwihaki, sue).
mother_law(geraldine, kimana).

parent(X, Y) :- 
    motherOf(X, Y); 
    fatherOf(X, Y); 
    motherLOf(X,Y); 
    fatherLOf(X,Y).

parent(X,Y):-
     mother_law(X,Y); father_law(X,Y).
*/

parent(X,Y) :- 
    mother(X,Y); father(X,Y).

parent(X,Y):-
    spouse(Z,Y),
    father(X,Z).

spouse(X,Y):-
    husband(X,Y),
    wife(Y,X).

spouse(X,Y):-
    wife(X,Y),
    husband(Y,X).

grandmother(X,Y) :-
    mother(X,Z),
    parent(Z,Y),
    format('~w is the grandmother of ~w ~n', [X,Y]).

grandfather(A,B):-
    father(A,C),
    parent(C,B),
    format('~w is the grandfather of ~w ~n', [A,B]).

grandparents(A,B):-
    grandfather(A,B);
    grandmother(A,B).

brother(A,B):-
    male(A),
    parent(C,A),
    parent(C,B).

sister(A,B):-
    female(A),
    parent(C,A),
    parent(C,B).

cousin(A,B):-
    grandparents(C,A),
    grandparents(C,B).

aunt(A,B):-
    female(A),
    sister(C,A),
    parent(C,B).

uncle(A,B):-
    male(A),
    brother(C,A),
    parent(C,B).

nephew(A,B):-
    male(A),
    parent(C,A),
    sister(C,B).

nephew(A,B):-
    male(A),
    parent(C,A),
    brother(C,B).


niece(A,B):-
    female(A),
    parent(C,A), 
    sister(C,B).

niece(A,B):-
    female(A),
    parent(C,A), 
    brother(C,B).




