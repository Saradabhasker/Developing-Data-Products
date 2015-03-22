library(shiny)
library(UsingR)
library(caret)
data(mtcars)
modFit <- train(mpg~factor(am)+factor(cyl)+wt+hp, data= mtcars, method="glm")
predictMileage <- function(am1, cyl1, wt1, hp1){
 p1 <- predict(modFit, newdata=data.frame(am=am1, cyl=cyl1, wt=wt1, hp=hp1))
}

shinyServer(function(input, output){
  output$prediction <- renderPrint({predictMileage(input$am,input$cyl, input$weight,input$hp)})
  output$text1 <- renderText({input$cyl})
  output$text2 <- renderText({input$hp})
  output$text3 <- renderText({input$weight})  
  output$text4 <- renderText({predictMileage(input$am, input$cyl, input$weight,input$hp)})    
})


#setwd("E:/Data/Sarada/Coursera/DevelopingDataProducts/Project")
#setwd("E:/Data/Sarada/Coursera/DevelopingDataProducts/Project/slidify/DPP_Project")

#h3('for transmission type of '),
#verbatimTextOutput("text1"),
#verbatimTextOutput("text2"),
#verbatimTextOutput("text3")         
