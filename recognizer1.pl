% ['/Users/daudi/Desktop/prolog/recognizer1.pl']

% Example IV
% ------------

/* 
this is a more complex grammar, which also checks for singular/plural
   and returns the parse tree.
   From Pereira and Warren paper, AI journal, 1980 
*/

/*

sentence(s(NP,VP)) --> 
	noun_phrase(N, NP), verb_phrase(N,VP).
noun_phrase(N,np(Det,Noun,Rel)) --> 
	determiner(N, Det), noun(N,Noun), rel_clause(N,Rel).
noun_phrase(singular,np(Name)) --> 
	name(Name).
verb_phrase(N,vp(TV,NP)) --> 
	trans_verb(N,TV), noun_phrase(_,NP).
verb_phrase(N,vp(IV)) --> 
	intrans_verb(N,IV).
rel_clause(N,rel(that,VP)) --> 
	[that],verb_phrase(N,VP).
rel_clause(_,rel(nil)) --> [].
determiner(N,det(W)) --> [W],{is_determiner(W,N)}.
determiner(plural,det(nil)) --> [].

noun(N,n(Root)) --> [W],{is_noun(W,N,Root)}.
name(name(W)) --> [W],{is_name(W)}.
trans_verb(N,tv(Root)) --> [W],{is_trans(W,N,Root)}.
intrans_verb(N,iv(Root)) --> [W],{is_intrans(W,N,Root)}.

is_determiner(every,singular).
is_determiner(all,plural).
is_noun(man,singular,man).
is_noun(men,plural,men).
is_name(mary).
is_trans(likes,singular,like).
is_trans(like,plural,like).
is_intrans(live,plural,live).

*/


/* examples */
/*
?- sentence(S,[all,men,live],[]).
?- sentence(S,[every,man,likes,mary],[]).
?- sentence(S,[every,man,likes,mary],[]).
*/

% ============================================================================
% Example III
% --------------
% Parsing and constructing the parse tree
/* this generates a parse tree for a simple English grammar */
/*
*/
sentence(sentence(X,Y)) -->
   noun_phrase(X), verb_phrase(Y).

noun_phrase(noun_phrase(X,Y)) -->
   determiner(X), noun(Y).

verb_phrase(verb_phrase(X,Y)) -->
   verb(X), noun_phrase(Y).

determiner(determiner(the)) --> [the].
determiner(determiner(a)) --> [a].
noun(noun(mouse)) --> [mouse].
noun(noun(cat)) --> [cat].
verb(verb(hate)) --> [hated].
verb(verb(scare)) --> [scared].

% sentence(Parsetree,[the,mouse,hated,the,cat],[]).


% ============================================================================

% Example II
% -------------
% The argument Number is the number of the subject and main verb.
% It is instantiated to 'singular' or 'plural'. 
/*
sentence(Number) --> noun_phrase(Number), verb_phrase(Number).
noun_phrase(Number) --> determiner(Number), noun(Number).
verb_phrase(Number) --> verb(Number), noun_phrase(_).

determiner(singular) --> [a].
determiner(_)        --> [the].
determiner(plural)   --> [].
noun(singular) --> [cat];[man];[mouse].
noun(plural)   --> [cats];[men];[mice].
verb(singular) --> [scares];[hates].
verb(plural)   --> [scare];[hate].

% ?-sentence(plural,[men,hate,mice],[]).
% ?-sentence(_,[the,men,hate,mice],[]).
% ?-sentence(_,[the,mice,scare,the,man],[]).
*/

% ============================================================================

% example I
% -----------

/*
sentence --> noun_phrase, verb_phrase.
noun_phrase --> determiner, noun.
verb_phrase --> verb, noun_phrase.
verb_phrase --> verb, sentence.

determiner --> [the].
determiner --> [a].
determiner --> [].
noun --> [cat];[mouse].
verb --> [scares];[hates].

% sentence([the,cat,scares,the,mouse],[]).
*/
