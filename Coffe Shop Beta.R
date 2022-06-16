# Modified from Winston Chang, 
# https://shiny.rstudio.com/gallery/shiny-theme-selector.html

# Concepts about Reactive programming used by Shiny, 
# https://shiny.rstudio.com/articles/reactivity-overview.html

# Load R packages
library(shiny)
library(shinythemes)

# Define UI
ui <- fluidPage(theme = shinytheme("cerulean"),
                navbarPage(
                  # theme = "cerulean",  # <--- To use a theme, uncomment this
                  "Segelas Cashier",
                  tabPanel("Navbar 1",
                           sidebarPanel(
                             tags$h3("Input:"),
                             textInput("txt1", "Swiss Choco:", "Swiss Choco: "),
                             textInput("txt2", "Vanilla:", "Vanilla: "),
                             textInput("txt3", "Taro:", "Taro: "),
                             textInput("txt4", "Lemon Thea:", "Lemon Thea: "),
                             textInput("txt5", "Thai Tea:", "Thai Tea:"),
                             textInput("txt6", "Boba Brown Sugar:", "Boba Brown Sugar: "),
                             textInput("txt7", "Red Velvet:", "Red Velvet: "),
                             textInput("txt8", "Strawberry Yoghurt:", "Strawberry Yoghurt: "),
                             textInput("txt9", "Ice COffe Villager:", "Ice COffe Villager: "),
                             
                           ), # sidebarPanel
                           mainPanel(
                             h1("Header 1"),
                             
                             h4("Output 1"),
                             verbatimTextOutput("txtout"),
                             
                           ) # mainPanel
                           
                  ), # Navbar 1, tabPanel
                  tabPanel("Navbar 2", "This panel is intentionally left blank"),
                  tabPanel("Navbar 3", "This panel is intentionally left blank")
                  
                ) # navbarPage
) # fluidPage


# Define server function  
server <- function(input, output) {
  
  output$txtout <- renderText({
    paste( input$txt1, input$txt2, input$txt3, input$txt4, input$txt5, input$txt6, input$txt7, input$txt8, input$txt9, sep = "," )
  })
} # server


# Create Shiny object
shinyApp(ui = ui, server = server)
