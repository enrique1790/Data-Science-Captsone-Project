library(tm)

bigram <- readRDS(file="data/final_bigram.Rda")
trigram <- readRDS(file="data/final_trigram.Rda")
fourgram <- readRDS(file="data/final_fourgram.Rda")

nextWordPredictor <- function(inputTxt) {
  
  if(nchar(inputTxt) > 0) {
    #clean input
    inputTxt <- tolower(inputTxt)
    inputTxt <- removeNumbers(inputTxt)
    inputTxt <- removePunctuation(inputTxt)
    inputTxt <- stripWhitespace(inputTxt)
    
    #split into words
    inputList <- unlist(strsplit(inputTxt, " "))
    
    print(inputList)
    
    
    numWords <- length(inputList)
    
    print(numWords)
    
    runBigram <- function(words){
      bigram[bigram$terms$one == words,]$terms$two
    }
    
    runTrigram <- function(words){
      trigram[trigram$terms$one == words[1] &
                trigram$terms$two == words[2],]$terms$three
    }
    
    runFourgram <- function(words) {
      fourgram[ fourgram$terms$one == words[1] &
                  fourgram$terms$two == words[2] &
                  fourgram$terms$three == words[3],]$terms$four
    }
    
    if(numWords == 1) {
      #print("running bigram")
      predList <- runBigram(inputList[1])
    }else if (numWords == 2) {
      #print("running trigram")
      word1 <- inputList[1]
      word2 <- inputList[2]
      predList <- runTrigram(c(word1, word2))
      
      if(length(predList) == 0){
        #print("Trigram failed running bigram")
        predList <- runBigram(word2)
      }
    }else {
      #print("running fourgram")
      word1 <- inputList[numWords-2]
      word2 <- inputList[numWords-1]
      word3 <- inputList[numWords]
      predList <- runFourgram(c(word1, word2, word3))
      
      if(length(predList) == 0){
        #print("fourgram failed running trigram")
        predList <- runTrigram(c(word2,word3))
      }
      
      if(length(predList) == 0){
        #print("trigram failed running bigram")
        predList <- runBigram(word3)
      }
    }
    
    #Return top n predictors
    n <- 4
    tp <- length(predList)
    
    if( tp >= n){
      predList <- predList[1:n]
    }
    
    as.character(predList)
  }else{
    ""
  }
  
  
  
}
