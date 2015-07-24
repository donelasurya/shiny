library(shiny)

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  output$P <- renderPrint({input$P})
  output$r <- renderPrint({input$r})
  output$n <- renderPrint({input$n})
  output$t <- renderPrint({input$t})
  output$amount_acc <- renderPrint({input$P * (1+input$r/input$n)^(input$n * input$t)})
  output$interest <- renderPrint({input$P * (1+input$r/input$n)^(input$n * input$t) - input$P})
})