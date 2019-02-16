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
  titlePanel("White Wine Qualty Predition"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("alc",
                   "Alcohol:",
                   min = 8,
                   max = 15,
                   value = 10),
       sliderInput("den",
                   "Density:",
                   min = 0.8,
                   max = 1.1,
                   value = 0.9),
       sliderInput("chlorides",
                   "Chlorides:",
                   min = 0.009,
                   max = 0.4,
                   value = 0.1),
       sliderInput("volatile.acidity",
                   "Volatile Acidity:",
                   min = 0.08,
                   max = 1.1,
                   value = 0.3)
       ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("Predicted Wine Quality (3 - poor, 9 - excellent)"),
       textOutput("pred1")
    )
  )
))
