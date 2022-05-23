library(shiny)
ui <- fluidPage(
  sliderInput(
    #inputId = "num", label = "Choose a number", min = 0, max = 100, value = 20)
    inputId = "num", label = "Choose a number", min = 0, max = 100, value = c(20, 40)),
  #sidebarPanel
  h3("Filter"),
  sliderInput(
    inputId = "VORP", label = "Player VORP rating at least", min = -3, max = 10, value = 0),
  selectInput(
    inputId = "Team", label = "Team", choices = unique(players$Team), selected = "Golden State Warriors"),
  selectInput(
    inputId = "Team", label = "Team", choices = unique(players$Team), selected = "Golden State Warriors", multiple = T)
)

server <- function(input, output) {

}
shinyApp(ui = ui, server = server)
