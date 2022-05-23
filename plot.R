library(shiny)
ui <- fluidPage(
  sliderInput("num", "Choose a number", 0, 100, 20),  ## id: num
  plotOutput("myplot")                                ## id: myplot
)
server <- function(input, output){
  output$myplot <- renderPlot({                       ## id: myplot
    plot(rnorm(input$num))                            ## id: num
  })
}
shinyApp(ui = ui, server = server)
