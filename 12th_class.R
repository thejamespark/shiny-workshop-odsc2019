library(shiny)

players <- read.csv("data/nba2018.csv")

ui <- fluidPage(
  nrow(players),
  br(),
  "Hello ODSC",
  h1("My Shiny app"),
  strong("Dean Attali"),
  br(),
  "Hello ODSC"
)

server <- function(input, output, session) {

}

shinyApp(ui, server)
