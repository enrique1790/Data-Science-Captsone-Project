library(shiny)
shinyUI(   fluidPage(
  headerPanel("Next Word Prediction App"
  ),
  sidebarPanel(
    h3("Introducton"),
    p("This application predicts the next possible word in a phrase or sentence. To use it, simply type word(s) on the text field on the screen
      and up to 4 possible next words will display in buttons below the field. Click on your intended match to add it to the field."),
    p("The application uses natural language processing, namely, n-grams, Markov model, and Katz's back-off model to perform text prediction."),
    p("This N-gram Word Predictor was developed as a capstone project to complete the Johns Hopkins data science Course.")
    ),
  mainPanel(
    h3("Input"),
    textInput("inputTxt", "Type in word(s) below:", width = "90%"),
    uiOutput("words"),
    br(),
    wellPanel(
      h4("Details"),
      HTML("<p> Github Repository <a href='https://github.com/enrique1790/Data-Science-Captsone-Project' target='_blank'>https://github.com/enrique1790/Data-Science-Captsone-Project</a></p>"),
      HTML("<p> Slide Deck Presentation  <a href='http://rpubs.com/enrique1790/444617' target='_blank'>http://rpubs.com/enrique1790/444617</a></p>"),
      h4("Author:"),
      p("Enrique Estrada")
    )
    
  )
))
