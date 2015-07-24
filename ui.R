library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Amount Accumulated per year based on Compound interest"),
  
  sidebarPanel(
    numericInput("P", "Principal in Rs",0,min = 0,step=1),
    numericInput("r","Rate of Interest", 0,min = 0, step = 0.1),
    sliderInput("n","Compoundings Per Year",min = 1,max = 12,value = 1, step = 1),
    numericInput("t","No of years",0,min = 0, step = 1),
    submitButton('Calculate')
  ),
  
  mainPanel(
    h3('Summary'),
    h4('Principal:'),
    verbatimTextOutput("P"),
    h4('Rate of Interest'),
    verbatimTextOutput("r"),
    h4('Compoundings Per Year'),
    verbatimTextOutput("n"),
    h4('No of years'),
    verbatimTextOutput("t"),
    h4("Compound Interest"),
    verbatimTextOutput("interest"),
    h4("Amount Accumulated:"),
    verbatimTextOutput("amount_acc")
  )
))