library(shiny)

shinyServer(
  function(input, output) {
    output$BMI <- renderText(input$BMIweight/input$BMIheight/input$BMIheight*100*100)
    output$Condition <- renderText(
      if (input$BMIweight/input$BMIheight/input$BMIheight*100*100 <= switch(input$Country, W = 18.5, JP = 18.5, CN = 18.5, SG = 18.4, HK = 18.5)) "Underweight" 
      else if (input$BMIweight/input$BMIheight/input$BMIheight*100*100 >= switch(input$Country, W = 25, JP = 25, CN = 24, SG = 23, HK =23 )) "Overweight"
      else "Normal"      
      )
    
  }
)