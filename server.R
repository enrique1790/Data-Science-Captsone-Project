library(shiny)

source("./Prediction.R", local = TRUE)

shinyServer(
  function(input, output, session){
    
    
    prediction <- reactive({
      nextWordPredictor(input$inputTxt)
    })
    
    output$words <- renderUI( {
      predictWords <- prediction()
      assign('savedWords', predictWords, envir=.GlobalEnv)
      n <- length(predictWords)
      if( n > 0 && nchar(predictWords) > 0) {
        buttons <- list()
        for(i in 1:n) {
          buttons <- list(buttons, list(
            actionButton(inputId = paste("word",i, sep = ""), label =predictWords[i])
          ))
        }
        
        tagList(
          buttons 
        )
      } else {
        tagList("") 
      }
    })
    
    observeEvent(input$word1, {
      updateTextInput(session, "inputTxt", value = paste(input$inputTxt, get('savedWords', envir=.GlobalEnv)[1]))
    })
    
    observeEvent(input$word2, {
      updateTextInput(session, "inputTxt", value = paste(input$inputTxt, get('savedWords', envir=.GlobalEnv)[2]))
    })
    
    observeEvent(input$word3, {
      updateTextInput(session, "inputTxt", value = paste(input$inputTxt, get('savedWords', envir=.GlobalEnv)[3]))
    })
    
    observeEvent(input$word4, {
      updateTextInput(session, "inputTxt", value = paste(input$inputTxt, get('savedWords', envir=.GlobalEnv)[4]))
    })
    
  })