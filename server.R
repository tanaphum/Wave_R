library(shiny)

# Define server logic required to draw a histogram
function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    x<-seq(0,30,0.1)
    plot(x=x,y=sin(input$a*x+input$b),type ="l")
    lines(c(input$c,input$c),c(-10,10),col= "blue")
    text(x=input$c,y=sin(input$a*input$c+input$b),formatC(sin(input$a*input$c+input$b), digits = 4, format = "f"))
  })
  
}