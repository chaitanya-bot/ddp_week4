#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
  titlePanel("Shiny Calculator"),
  sidebarLayout(
    sidebarPanel(
      numericInput("number1","Enter the first number", 0),
      numericInput("number2","Enter the second number", 0),
      radioButtons("op","Select an operator",choices = c("Addition(+)","Subtraction(-)",
                                                         "Multiplication(x)","Division(/)"),
                   selected = "Addition(+)"),


    ),
    mainPanel(
      h2("The result is"),
      textOutput("output")
    )
  )
)

