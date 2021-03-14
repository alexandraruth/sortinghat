#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Hogwarts Sorting Hat"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            p("There\'s nothing hidden in your head the sorting hat can\'t see,"),
            p('So try me on and I will tell you where you ought to be.')
        ),

        # Show a plot of the generated distribution
        mainPanel(
            img(src = "hat.png", height = 200, width = 200)
        )
    )
))
