% ['/Users/daudi/Desktop/prolog/kikuyu.pl'].

/*
*/
sentence --> noun_phrase, verb_phrase.
sentence --> pronoun_phrase,verb_phrase.
sentence --> noun_phrase,pronoun_phrase.
sentence --> noun_phrase, noun_phrase.
noun_phrase --> interjection, noun.
noun_phrase --> noun, interjection.
noun_phrase --> noun, verb_phrase.
noun_phrase --> pronoun, noun.
noun_phrase --> verb_phrase, noun.
pronoun_phrase --> interjection, pronoun.
verb_phrase --> verb, noun.
verb_phrase --> noun, verb.
verb_phrase --> verb, interjection.
verb_phrase --> interjection, verb.
verb_phrase --> verb, noun_phrase.
verb_phrase --> verb, sentence.
verb_phrase --> verb, adjective.
verb_phrase --> interjection, adjective.
verb_phrase --> adjective, adverb_phrase.
verb_phrase --> pronoun, verb.
% verb --> verb, pronoun
adverb_phrase --> adverb, noun.


interjection --> [naake];[atiriri];[ta];[o];[na];[].
noun --> [ngai];[utheri];[ikinya];[ciugo];[daudi];[kiambiriria];[iguru];[thi];[].
verb --> [akiuga];[thia];[nikugie];[gukigia];[njitaguo];[kinyukia];[wicirie];[ciugite];[niombire].
pronoun --> [nie];[icio];[].
adjective --> [hanini].
adverb --> [uria].

/*
sentence([kinyukia,ikinya],[]).
sentence([ta, thia, thia, hanini],[]).
sentence([nie,njitaguo,daudi],[]).
sentence([wicirie,o,hanini,uria,ciugo,icio,ciugite],[]).
sentence([o,kiambiriria,ngai,niombire,iguru,na,thi],[]).
*/

/*
interjection --> [ha];[].
noun --> [maritwa];[kimana];[ikinya];[uikare];[].
verb --> [njitaguo];[kinyukia];[thie].
pronoun --> [nie];[haria];[].
adjective --> [].
adverb --> [].
*/

/*
sentence([ha,maritwa,nie,njitaguo,kimana],[]).
sentence([thie,uikare,haria],[]).
*/