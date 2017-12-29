library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Hello Shiny!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("a",
                  "Number of a:",
                  min = 0.1,
                  max = 2,
                  value = 30),
      sliderInput("b",
                  "Number of b:",
                  min = 0,
                  max = 30,
                  value = 0),
      sliderInput("c",
                  "Number of c:",
                  min = 0,
                  max = 30,
                  value = 15)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)