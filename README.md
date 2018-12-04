# Data-Science-Captsone-Project: Next Word Prediction App

## About Natural Processing Language

N-grams:is a contiguous sequence of n items from a given sequence of text or speech. 
Items:Phonemes, Syllables, Letters, Words 

Unigrams are single words. Bigrams are two words combinations. Trigrams are three-word combinations.

Tokenization: Breaking up the text into units of meaning, called tokens.

Corpus: A clean, sample of text called a corpus file. Using Methods such as removing whitespaces,  numbers, UTR, punctuation and so on.

Language Models: Assign probabilities to sequences of tokens based on previous word histories, & consecutive sequences of tokens

Katz Back-Off Model: (type of probabilistic language model)  is a generative n-gram language model that estimates the conditional probability of a word given it’s history in the n-gram.
Katz backoff works by first checking the Quadgram first and if there is no outcome then it checks the Trigram if the trigram also fails predict it moves to a Bigram.

## Theory behind the use of n-gram probabilities 
**Chain Rule:**
is one simple consequence of the definition of conditional probability: the joint probability of some set of events can also be expressed as a ‘chain’ of conditional probabilities, 
E.g.: Given sequence of words
P(W1,W2…,WT) = P(W2|W1)P(W3|W1,W2)...P(WT|W1,...,Wt-1)

Why not chain rule and instead markov assumption? Not practical

* Too many possible sentences!!

* We’ll never see enough data for estimating these!!

**Markov Random Process:**
A Random sequence has has the Markov property if the conditional probability distribution of future states of the process (conditional on both past and present states) depends only upon the present state, not on the sequence of events that preceded it (Bigram, Trigram)

* Any random process having this property is called a Markov Random Process.
ex.(n-gram probabilistic logic)

* A system with states that obey the Markov Assumption is called a Markov Model.

* A sequence of states resulting from such a model is called a Markov Chain.

**Katz Back-Off Model:** 
* (type of probabilistic language model)  is a generative n-gram language model that estimates the conditional probability of a word given it’s history in the n-gram.

* Works by first checking the Quadgram first and if there is no outcome then it checks the Trigram if the trigram also fails predict it moves to a Bigram.

## Generate data-sets for (unigram, bigram, trigram, quadgram)
The data came from HC Corpora with three files (Blogs, News and Twitter). The data was cleaned, processed, tokenized, and n-grams are created. The final report comes from the link Milestone Report.

* After loaded the data, a sample was created, cleaned and prepared to be used as a corpus of text. It was converted to lowercase, removed the punctuation, links, whitespace, numbers and profanity words

* The sample text was "tokenized" into so-called n-grams to construct the predictive models (Tokenization is the process of breaking a stream of text up into words, phrases. N-gram is a contiguous sequence of n items from a given sequence of text).

* The n-grams files or data.frames (unigram, bigram, trigram and quadgram) are matrices with frequencies of words, used into the algorithm to predict the next word based on the text entered by the user.

* For faster performance save individually 

## Reference
[Natural Language Processing:](https://en.wikipedia.org/wiki/Natural_language_processing)

[N-grams:](https://web.stanford.edu/class/cs124/lec/languagemodeling.pdf) 

[Markov Model:](https://pdfs.semanticscholar.org/2bf0/8addb83f51befa8b4bc7ed16b54ed34018d0.pdf)

[Kat'z back-off model:](https://nlp.stanford.edu/~wcmac/papers/20050421-smoothing-tutorial.pdf)

[Shiny App:](https://enrique1790.shinyapps.io/predictive-word-app/)

[Slide Deck:](http://rpubs.com/enrique1790/444641)





