library(UsingR)
library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predict MPG of a Vehicle"),
  sidebarPanel(    
    radioButtons("am", "Transmission Type:", c("Automatic" = "0", "Manual"= "1") ),
    radioButtons("cyl", "Number of Cylinders", c("4" = 4, "6"= 6, "8"=8) ),    
    #numericInput('cyl', 'Enter the number of Cylinders', 6, min=4,max=8, step=2),
    numericInput('weight', 'Enter Weight of Car (lb/1000)', 2, min=1.2, max=5.5, step=0.2),
    numericInput('hp', 'Enter HP of Car', 200, min=50, max=350, step=5),  
    submitButton('Submit')
  ),
  mainPanel(
    p("Make your choices of the features on the left panel and press the submit button to get the MPG"),    
    h3('The predicted mileage for car is'), textOutput("text4")
  )
))





