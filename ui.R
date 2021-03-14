#
# This is the user-interface code for sortinghat

library(shiny)

# Define UI 
shinyUI(fluidPage(

    # Application title
    titlePanel("Hogwarts Sorting Hat"),

    # Sidebar 
    sidebarLayout(
        sidebarPanel(
            p("There\'s nothing hidden in your head the sorting hat can\'t see,"),
            p('So try me on and I will tell you where you ought to be.'),
            
            radioButtons("sorting", label = h3("Which of these best describes your heart?"),
                         choices = list("Brave" = "GRYFFINDOR!", "Loyal" = "HUFFLEPUFF!", "Wise" = "RAVENCLAW!", "Malevolent"= "SLYTHERIN!"), 
                        selected = 0
                         ),
            
            hr()
            
        ),

        # Show a sorting hat and sorting output
        mainPanel(
            img(src = "hat.png", height = 200, width = 200),
            
            fluidRow(column(5, verbatimTextOutput("value")))
        )
    )
))
