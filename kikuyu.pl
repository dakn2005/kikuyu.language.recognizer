% in prolog, run below first
% ['/Users/daudi/Desktop/prolog/kikuyu.pl'].
/*
verb_phrase --> verb, sentence.
*/
sentence --> noun_phrase, verb_phrase.
sentence --> pronoun_phrase, verb_phrase.
noun_phrase --> noun, verb.
noun_phrase --> noun, verb_phrase.
pronoun_phrase --> pronoun, verb.
verb_phrase --> verb, noun.
verb_phrase --> verb, adjective.

noun --> [wambo];[nakou];[].
verb --> [njitaguo];[thie];[].
pronoun --> [nie];[].
adjective --> [].
adverb --> [].


/*
sentence([thie,nakou],[]).
sentence([nie,njitaguo,wambo],[]).
*/