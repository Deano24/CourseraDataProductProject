
library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Body Mass Index Calculator"),
  
  p("Welcome to the BDMI Calculator."),
  p("To use this calculator follow the instructions below:"),
  p("1. Enter your height into the first text box and select the units to be used."),
  p("2. Enter your weight into the second text box and select the units to be used."),
  p("3. Click the submit button and the result will be shown on the areas located to the rigth of the screen."),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      textInput("height",
                "Your height:",
        ),
      selectInput("height_unit", "Height unit:",
                  c("inch" = "inch",
                    "feet" = "feet")
        ),
      textInput("weight",
                "Your weight:"
      ),
      selectInput("weight_unit", "Weight unit:",
                  c("pound" = "pound",
                    "ounce" = "ounce",
                    "stone" = "stone")
      ),
      submitButton("Calculate BMI")
      
    ),

    # Show a plot of the generated distribution
    mainPanel(
      verbatimTextOutput("height"),
      verbatimTextOutput("weight"),
      verbatimTextOutput("bmi"),
      verbatimTextOutput("result")
    )
  )
))
