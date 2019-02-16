#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
white.url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-white.csv"
white.raw <- read.csv(white.url, header = TRUE, sep = ";")
white <- white.raw[,c("alcohol", "density", "chlorides", "volatile.acidity", "quality")]
white$quality <- as.factor(white$quality)
library(randomForest)
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  model1pred <- reactive({
    alc_inp <- input$alc
    den_inp <- input$den
    chl_inp <- input$chlorides
    vac_inp <- input$volatile.acidity
    rf_wine <- randomForest(quality~ alcohol + density + chlorides + volatile.acidity, data = white, ntree = 1000)
    predict(rf_wine, newdata = data.frame(alcohol = alc_inp, density = den_inp, chlorides = chl_inp, volatile.acidity = vac_inp))
  })
    
  output$pred1 <- renderText({
    
    model1pred()
  })
  
})
