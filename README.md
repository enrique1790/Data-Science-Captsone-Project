# Data-Science-Captsone-Project: Next Word Prediction App

## About Natural Processing Language

N-grams:is a contiguous sequence of n items from a given sequence of text or speech. 
Items:Phonemes, Syllables, Letters, Words 

Unigrams are single words. Bigrams are two words combinations. Trigrams are three-word combinations.

Tokenization: Breaking up the text into units of meaning, called tokens.

Corpus: A clean, sample of text called a corpus file. Using Methods such as removing whitespaces,  numbers, UTR, punctuation and so on.

Language Models: Assign probabilities to sequences of tokens based on previous word histories, & consecutive sequences of tokens

Katz Back-Off Model: (type of probabilistic language model)  is a generative n-gram language model that estimates the conditional probability of a word given it’s history in the n-gram

## Theory behind the use of n-gram probabilities 
Chain Rule:
is one simple consequence of the definition of conditional probability: the joint probability of some set of events can also be expressed as a ‘chain’ of conditional probabilities, 
E.g.: Given sequence of words
P(W1,W2…,WT) = P(W2|W1)P(W3|W1,W2)...P(WT|W1,...,Wt-1)

Why not chain rule and instead markov assumption? Not practical

-Too many possible sentences!!
-We’ll never see enough data for estimating these!!

Markov Random Process:
A Random sequence has has the Markov property if the conditional probability distribution of future states of the process (conditional on both past and present states) depends only upon the present state, not on the sequence of events that preceded it (Bigram, Trigram)
Any random process having this property is called a Markov Random Process.
ex.(n-gram probabilistic logic)
A system with states that obey the Markov Assumption is called a Markov Model.
A sequence of states resulting from such a model is called a Markov Chain.
