# This is the server code for sortinghat

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$value <- renderPrint({ input$sorting })

})
