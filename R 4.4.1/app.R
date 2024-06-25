library(shiny)

# Define UI for the application
ui <- fluidPage(
  
  # Application title
  titlePanel("R Version Display"),
  
  # Sidebar layout with a sidebar and main panel
  sidebarLayout(
    sidebarPanel(
      h3("Information")
    ),
    
    # Show the R version in the main panel
    mainPanel(
      h4("Current R Version:"),
      verbatimTextOutput("r_version")
    )
  )
)

# Define server logic required to display the R version
server <- function(input, output) {
  
  # Get the R version and display it
  output$r_version <- renderText({
    R.version.string
  })
}

# Run the application 
shinyApp(ui = ui, server = server)