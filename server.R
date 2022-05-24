#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyServer(function(input, output) {

  output$output <- renderText({
    i1 <- input$number1
    i2 <- input$number2
    if(input$op == 'Addition(+)')
      i1 + i2
    else if(input$op == 'Subtraction(-)')
      i1 - i2
    else if(input$op == 'Multiplication(x)')
      i1 * i2
    else if(input$op == 'Division(/)')
      i1 / i2

  })
})
